var jq = jQuery.noConflict();

jq(document).ready(function ($) {

    var titleField = jq("#option_title");
    var contentField = jq("#option_content");

    var gridCropper = $("#banner_grid");
    var listCropper = $("#banner_list")

    hideFormSecondStep()

    function showFormSecondStep() {
        titleField.closest("tr").show();
        contentField.closest("tr").show();
        gridCropper.closest("tr").show();
        listCropper.closest("tr").show();
    }

    function hideFormSecondStep() {
        titleField.closest("tr").hide();
        contentField.closest("tr").hide();
        gridCropper.closest("tr").hide();
        listCropper.closest("tr").hide();
    }

    $('#upload_btn').on('click', function() {

        var file_data = $('#image').prop('files')[0];
        var form_data = new FormData();
        form_data.append('image', file_data);
        console.log(form_data);

        $.ajax({
            url: '/admin/banner/upload/form_key/' + FORM_KEY,
            dataType: 'json',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            type: 'post',
            success: function(serverResponse) {
                if(serverResponse.result) {
                    showFormSecondStep();
                    var firstSelector = "#banner_grid";
                    var secondSelector = "#banner_list";

                    var imageFirst = $(firstSelector);
                    var imageSecond = $(secondSelector);

                    imageFirst.attr('src', serverResponse.image);
                    imageSecond.attr('src', serverResponse.image);

                    imageFirst.cropper({
                        aspectRatio: 1 / 2.25,
                        setDragMode: "move"
                    });
                    imageSecond.cropper({
                        aspectRatio: 1 / 0.42,
                        setDragMode: "move"
                    });
                } else {
                    alert(serverResponse.error);
                }
                return false;
            }
        });

    });

    $(".apply_cropped_image").click(function () {
        var selector = $(this).data().imageSelector;
        var image = $(selector);
        var previewImage = $(selector + '_preview');
        var currentCropper = image.data('cropper');
        if (currentCropper.cropped) {
            var result = image.cropper('getCroppedCanvas', {}, {});
            if (result) {
                previewImage.attr('src', result.toDataURL());
                previewImage.toggleClass('hidden');
            }
        }
        $(this).toggleClass('hidden');
        image.closest('tr').find('.cropper-container').toggleClass('hidden');
        image.closest('tr').find('.change_cropped_image').toggleClass('hidden');
    })

    $(".change_cropped_image").click(function () {
        var selector = $(this).data().imageSelector;
        var image = $(selector);
        var previewImage = $(selector + '_preview');

        $(this).toggleClass('hidden');
        previewImage.toggleClass('hidden');
        image.closest('tr').find('.cropper-container').toggleClass('hidden');
        image.closest('tr').find('.apply_cropped_image').toggleClass('hidden');
    })

})
