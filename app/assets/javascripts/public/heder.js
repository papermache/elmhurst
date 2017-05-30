var hedaerViewModel = null;
var PAGING_ITEMS = 5;

var headerViewModelOperation = {
    hedaerViewModel: function () {
        var self = this;

        self.user = ko.observableArray([]);
        self.FirstName = ko.observable("");
        self.LastName = ko.observable("");

    },
    ini: function () {
        hedaerViewModel = new headerViewModelOperation.hedaerViewModel();
        headerViewModelOperation.getProjects();
        ko.applyBindings(hedaerViewModel, $('#hedaerViewModel')[0]);
    },
    getProjects: function () {

        $.ajax({
            type: 'GET',
            url: mainUrl + 'users/' + user_id,
            success: function (data) {

                for (var x in data) {
                    row = data[x];
                    hederViewModelItem = new headerViewModelOperation.hedaerViewModel();
                    hederViewModelItem.FirstName(row.first_name);
                    hederViewModelItem.LastName(row.last_name);
                    hedaerViewModel.user.push(hederViewModelItem);
                }
            }
        });
        return hedaerViewModel.user();
    }
}

$(document).ready(function () {
    headerViewModelOperation.ini();
});



