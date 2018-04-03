var jq = jQuery.noConflict();

jq(document).ready(function (jq) {

    'use strict';

    var bannerGridImageSelector = "#banner_grid";
    var listGridImageSelector = "#banner_list";
    var hiddenClassName = 'hidden';

    var loader = jq("#loading-mask");
    var titleField = jq("#option_title");
    var contentField = jq("#option_content");
    var listCropperImage = jq(listGridImageSelector);
    var gridCropperImage = jq(bannerGridImageSelector);

    var gridCropperImagePreview = jq("#banner_grid_preview");
    var listCropperImagePreview = jq("#banner_list_preview");

    var baseCropperImage = jq("#base_cropper_image");
    var gridCropperOptions = jq("#banner_grid_options");
    var listCropperOptions = jq("#banner_list_options");

    var uploadBtnSelector = '#upload_btn';
    var uploadFileFieldSelector = '#image';

    var applyCroppedBtnSelector = '.apply_cropped_image';
    var changeCroppedBtnSelector = '.change_cropped_image';
    var cropperContainerSelector = '.cropper-container';

    if(baseCropperImage.val()) {
        showFormSecondStep();
        listCropperImage.addClass(hiddenClassName);
        listCropperImage.closest('tr').find(applyCroppedBtnSelector).addClass(hiddenClassName);
        listCropperImage.closest('tr').find(changeCroppedBtnSelector).removeClass(hiddenClassName);
        listCropperImagePreview.removeClass(hiddenClassName);

        gridCropperImage.addClass(hiddenClassName);
        gridCropperImage.closest('tr').find(applyCroppedBtnSelector).addClass(hiddenClassName);
        gridCropperImage.closest('tr').find(changeCroppedBtnSelector).removeClass(hiddenClassName);
        gridCropperImagePreview.removeClass(hiddenClassName);
    }  else {
        hideFormSecondStep();
    }

    function showFormSecondStep() {
        titleField.closest("tr").removeClass(hiddenClassName);
        contentField.closest("tr").removeClass(hiddenClassName);
        gridCropperImage.closest("tr").removeClass(hiddenClassName);
        listCropperImage.closest("tr").removeClass(hiddenClassName);
    }

    function hideFormSecondStep() {
        titleField.closest("tr").addClass(hiddenClassName);
        contentField.closest("tr").addClass(hiddenClassName);
        gridCropperImage.closest("tr").addClass(hiddenClassName);
        listCropperImage.closest("tr").addClass(hiddenClassName);
    }

    jq(uploadBtnSelector).on('click', function() {
        var file_data = jq(uploadFileFieldSelector).prop('files')[0];
        var form_data = new FormData();
        form_data.append('image', file_data);
        loader.show();
        jq.ajax({
            url: '/admin/banner/upload/form_key/' + FORM_KEY,
            dataType: 'json',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            type: 'post',
            success: function(serverResponse) {
                loader.hide();
                if(serverResponse.result) {
                    baseCropperImage.val(serverResponse.image);
                    initCroppers();
                } else {
                    alert(serverResponse.error);
                }
                return false;
            }
        });
    });

    jq(applyCroppedBtnSelector).click(function () {
        var selector = jq(this).data().imageSelector;
        var image = jq(selector);
        var previewImage = jq(selector + '_preview');
        var dataImage = jq(selector + '_data');
        var cropperOption = jq(selector + '_options');
        var currentCropper = image.data('cropper');
        if (currentCropper.cropped) {
            var result = image.cropper('getCroppedCanvas', {}, {});
            cropperOption.val(JSON.stringify(image.cropper("getData")));
            if (result) {
                previewImage.attr('src', result.toDataURL());
                dataImage.val(result.toDataURL());
                previewImage.removeClass('hidden');
            }
        }
        jq(this).toggleClass('hidden');
        image.closest('tr').find(cropperContainerSelector).toggleClass('hidden');
        image.closest('tr').find(changeCroppedBtnSelector).toggleClass('hidden');
        return false;
    })

    jq(changeCroppedBtnSelector).click(function () {
        var selector = jq(this).data().imageSelector;
        var image = jq(selector);
        var previewImage = jq(selector + '_preview');
        if(selector == bannerGridImageSelector) {
            initGridCropper();
        }
        if(selector == listGridImageSelector) {
            initListCropper();
        }
        jq(this).addClass('hidden');
        previewImage.addClass('hidden');
        image.closest('tr').find(applyCroppedBtnSelector).removeClass('hidden');
        return false;
    })

    function initCroppers() {
        initGridCropper();
        initListCropper();
    }

    function initGridCropper() {
        var imageSrc = baseCropperImage.val();
        gridCropperImage.attr('src', imageSrc);
        gridCropperImage.cropper('destroy').cropper({
            aspectRatio: 1 / 2.25,
            minContainerHeight : 600,
            minContainerWidth : 1000,
            setDragMode: "move",
            ready : function () {
                gridCropperImage.cropper('setData', JSON.parse(gridCropperOptions.val()));
            }
        });
    }

    function initListCropper() {
        var imageSrc = baseCropperImage.val();
        listCropperImage.attr('src', imageSrc);
        listCropperImage.cropper('destroy').cropper({
            aspectRatio: 1 / 0.42,
            minContainerHeight : 600,
            minContainerWidth : 1000,
            setDragMode: "move",
            ready: function () {
                listCropperImage.cropper('setData', JSON.parse(listCropperOptions.val()));
            },
        });
    }
})
