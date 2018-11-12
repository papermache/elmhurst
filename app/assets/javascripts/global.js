//get cookies function
function getCook(cookiename)
{
    var cookiestring = RegExp("" + cookiename + "[^;]+").exec(document.cookie);
    return unescape(!!cookiestring ? cookiestring.toString().replace(/^[^=]+./, "") : "");
}

var user_id = getCook('user_id');

var first_name = getCook('first_name');

var last_name = getCook('last_name');

var project_id = getCook('project_id');

//main api url
//var mainUrl = 'http://elmhur.st/api/v1/';
//var mainUrl = 'http://elmhur.st/api/v1/'; //original One
  var mainUrl = 'http://localhost:3000/api/v1/'; //for locally

//var requset ='http://localhost:8080/elmuhrst/rest/projectResearcher/2/1'

//requset api url 
//var requsetURL = 'http://elmhur.st/elmuhrst/rest/request';
//var requsetURL = 'http://elmhur.st/elmuhrst/rest/request'; //original One
var requsetURL  = "http://localhost:3000/rest/request"; //for locally

//projectResearcher api url 
//var projectResearcherUrl = 'http://elmhur.st/elmuhrst/rest/projectResearcher/';
//var projectResearcherUrl = 'http://elmhur.st/elmuhrst/rest/projectResearcher/';  //original One
//var projectResearcherUrl = "http://localhost:3000/rest/projectResearcher/";  //for locally
