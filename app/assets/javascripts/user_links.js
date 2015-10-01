$(document).ready(function() {
    $(".rbtn").click(function(e) {
        e.preventDefault();
        e.stopPropagation();
        $.ajax({
            url: $(this).attr('href'),
            type: "post",
            data: {"_method":"delete"}
        }).success(function(data) {
            document.open();
            document.write(data);
            document.close();
        });
    });
})
