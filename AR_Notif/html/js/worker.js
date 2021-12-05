$(function () {
    window.addEventListener("message", function(event) {
        let data = event.data
        toastr.options.timeOut = data.timeout;
        toastr.options.positionClass = "toast-top-right";
        toastr.options.progressBar = true;
        toastr.options.newestOnTop = true;
        
        toastr.options.showEasing = "swing";
        toastr.options.hideEasing = "linear";
        toastr.options.showMethod = "fadeIn";
        toastr.options.hideMethod = "fadeOut";

        toastr.options.closeDuration = data.timeout;
        toastr[event.data.status](event.data.text);
    });
});