$(document).ready(function () {

    $("#dataForm").submit(function (event) {
        event.preventDefault();

        var formData = {
            name: $("#name").val(),
            email: $("#email").val(),
            phone: $("#phone").val()
        };

        $(".loader").show();

        $.ajax({
            type: "POST",
            url: "/index.php?action=submitForm",
            data: formData,
            success: function (response) {
                $(".form-layout").hide();
                $(".success-message").show();
                console.log(response);
            },
            error: function (error) {
                $(".form-layout").hide();
                $(".error-message").show();
                console.error("Error submitting form:", error);
            },
            complete: function () {
                $(".loader").hide();
            }
        });
    });

    $(document).on('click', '.more', function () {
        $(this).closest('.course-item').find('.course-popup').toggleClass('active');
    });

    $(document).on('click', '.more-courses button', function () {
        $('.course-item').addClass('active');
        $(this).closest('.more-courses').hide();
    });
});