var GoogleSpreadsheet,GoogleUrl;GoogleUrl=function(){function e(e){if(this.sourceIdentifier=e,this.sourceIdentifier.match(/http(s)*:/)){this.url=this.sourceIdentifier;try{this.key=this.url.match(/key=(.*?)&/)[1]}catch(t){this.key=this.url.match(/(cells|list)\/(.*?)\//)[2]}}else this.key=this.sourceIdentifier;this.jsonCellsUrl="https://spreadsheets.google.com/feeds/cells/"+this.key+"/od6/public/basic?alt=json-in-script",this.jsonListUrl="https://spreadsheets.google.com/feeds/list/"+this.key+"/od6/public/basic?alt=json-in-script",this.jsonUrl=this.jsonCellsUrl}return e}(),(GoogleSpreadsheet=function(){function s(){}return s.prototype.load=function(t){var r,o,l,e;if(e=this.googleUrl.jsonCellsUrl+"&callback=GoogleSpreadsheet.callbackCells",$("body").append("<script src='"+e+"'/>"),o=this.jsonUrl,l=0,r=setInterval(function(){var e;if(e=s.find({jsonUrl:o}),20<l++||null!=e&&null!=e.data)return clearInterval(r),t(e)},200),"undefined"!=typeof result&&null!==result)return result},s.prototype.url=function(e){return this.googleUrl(new GoogleUrl(e))},s.prototype.googleUrl=function(e){if("string"==typeof e)throw"Invalid url, expecting object not string";return this.url=e.url,this.key=e.key,this.jsonUrl=e.jsonUrl,this.googleUrl=e},s.prototype.save=function(){return localStorage["GoogleSpreadsheet."+this.type]=JSON.stringify(this)},s}()).bless=function(e){var t,r,o;for(t in r=new GoogleSpreadsheet,e)o=e[t],r[t]=o;return r},GoogleSpreadsheet.find=function(e){var t,r,o,l,s,n;try{for(t in localStorage)if(t.match(/^GoogleSpreadsheet\./))for(o in r=JSON.parse(localStorage[t]),e)if(l=e[o],r[o]===l)return GoogleSpreadsheet.bless(r)}catch(i){for(s=0,n=localStorage.length;s<n;s++)if((t=localStorage[s]).match(/^GoogleSpreadsheet\./))for(o in r=JSON.parse(localStorage[t]),e)if(l=e[o],r[o]===l)return GoogleSpreadsheet.bless(r)}return null},GoogleSpreadsheet.callbackCells=function(U){var y,e,t;return t=new GoogleUrl(U.feed.id.$t),null===(e=GoogleSpreadsheet.find({jsonUrl:t.jsonUrl}))&&(e=new GoogleSpreadsheet).googleUrl(t),e.data=function(){var e,t,r,o=[];o=[];var l=[],s=[],n="ABCDEFGHIJKLMNOPQRSTUVQXY",i="A",a=0,h=2,c=[],u=!0;for(e=0,t=(r=U.feed.entry).length;e<t;e++){var f=(y=r[e]).title.$t,g=y.content.$t,p=f[0],d=f.substring(1,f.length);if("1"==d&&u)l.push(g);else{if(u=!1,d!=h&&(s.push(c),c=[],h=d,i=n[a=0]),p!=i)for(var S=!0;S&&i!=p;)i=n[++a],c.push("");c.push(g),i=n[++a]}o.push({cell:y.title.$t,content:y.content.$t})}return{headers:l,rows:s}}(),e.save(),e};