 var projectViewModel = null;
var projectssArray = [];

var projectsViewModelOperation = {
    projectViewModel: function () {
        var self = this;
        self.title = ko.observable("")
        self.description = ko.observable("");
        // self.current_user = ko.observable("");
        current_used = $("#current").val();
        self.postProjects = function () {
            if ($("#projectForm").valid()){
                
            $.ajax({
                url: mainUrl+'projects',
                type: "Post",
                accept: 'json',
                data: {
                    title: self.title(),
                    description: self.description(),
                    current_user: current_used,

                },
                success: function (data) {

                    $.gritter.add({
                        title: "Success ! ",
                        text: " your project Successfully added ",
                        fade: true,
                        speed: "slow"
                    });

                },
                error: function () {

                    $.gritter.add({
                        title: "failure ! ",
                        text: " Something terrible happened.",
                        fade: true,
                        speed: "slow",
                        position: 'left'

                    });
                }
            });
    }
        }

    },
    ini: function () {
        projectViewModel = new projectsViewModelOperation.projectViewModel();

        ko.applyBindings(projectViewModel, $('#projectViewModel')[0]);
    },
}

$(document).ready(function () {
    projectsViewModelOperation.ini();

 $("#projectForm").validate({
        rules: {
            title: {required: true},
            description: {required: true}
        },
        messages: {
            title: {required: "Please enter a project title"},
            description: {required: "Please enter a project description"}
        }
    });


});



