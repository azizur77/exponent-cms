/*
YUI 3.16.0 (build 76f0e08)
Copyright 2014 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

if (typeof __coverage__ === 'undefined') { __coverage__ = {}; }
if (!__coverage__['build/querystring-parse-simple/querystring-parse-simple.js']) {
   __coverage__['build/querystring-parse-simple/querystring-parse-simple.js'] = {"path":"build/querystring-parse-simple/querystring-parse-simple.js","s":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0,"10":0,"11":0,"12":0},"b":{"1":[0,0],"2":[0,0],"3":[0,0]},"f":{"1":0,"2":0,"3":0},"fnMap":{"1":{"name":"(anonymous_1)","line":1,"loc":{"start":{"line":1,"column":36},"end":{"line":1,"column":55}}},"2":{"name":"(anonymous_2)","line":24,"loc":{"start":{"line":24,"column":20},"end":{"line":24,"column":43}}},"3":{"name":"(anonymous_3)","line":44,"loc":{"start":{"line":44,"column":23},"end":{"line":44,"column":36}}}},"statementMap":{"1":{"start":{"line":1,"column":0},"end":{"line":49,"column":41}},"2":{"start":{"line":22,"column":0},"end":{"line":22,"column":45}},"3":{"start":{"line":24,"column":0},"end":{"line":42,"column":2}},"4":{"start":{"line":25,"column":4},"end":{"line":25,"column":21}},"5":{"start":{"line":26,"column":4},"end":{"line":26,"column":19}},"6":{"start":{"line":27,"column":4},"end":{"line":40,"column":5}},"7":{"start":{"line":36,"column":8},"end":{"line":36,"column":36}},"8":{"start":{"line":37,"column":8},"end":{"line":39,"column":9}},"9":{"start":{"line":38,"column":12},"end":{"line":38,"column":92}},"10":{"start":{"line":41,"column":4},"end":{"line":41,"column":15}},"11":{"start":{"line":44,"column":0},"end":{"line":46,"column":2}},"12":{"start":{"line":45,"column":4},"end":{"line":45,"column":53}}},"branchMap":{"1":{"line":25,"type":"binary-expr","locations":[{"start":{"line":25,"column":10},"end":{"line":25,"column":13}},{"start":{"line":25,"column":17},"end":{"line":25,"column":20}}]},"2":{"line":26,"type":"binary-expr","locations":[{"start":{"line":26,"column":9},"end":{"line":26,"column":11}},{"start":{"line":26,"column":15},"end":{"line":26,"column":18}}]},"3":{"line":37,"type":"if","locations":[{"start":{"line":37,"column":8},"end":{"line":37,"column":8}},{"start":{"line":37,"column":8},"end":{"line":37,"column":8}}]}},"code":["(function () { YUI.add('querystring-parse-simple', function (Y, NAME) {","","// @TODO this looks like we are requiring the user to extract the querystring","// portion of the url, which isn't good.  The majority use case will be to","// extract querystring from the document configured for this YUI instance.","// This should be the default if qs is not supplied.","","/*global Y */","/**"," * <p>Provides Y.QueryString.parse method for converting Query Strings to an object."," * This is a simpler implementation than the full querystring-parse.</p>"," * <p>Because some things may require basic query string escaping functionality,"," * this module provides the bare minimum functionality (decoding a hash of simple values),"," * without the additional support for arrays, objects, and so on.</p>"," * <p>This provides a friendly way to deserialize basic query strings, without necessitating"," * a lot of code for simple use-cases.</p>"," *"," * @module querystring"," * @submodule querystring-parse-simple"," */","","var QueryString = Y.namespace(\"QueryString\");","","QueryString.parse = function (qs, sep, eq) {","    sep = sep || \"&\";","    eq = eq || \"=\";","    for (","        var obj = {},","            i = 0,","            pieces = qs.split(sep),","            l = pieces.length,","            tuple;","        i < l;","        i ++","    ) {","        tuple = pieces[i].split(eq);","        if (tuple.length > 0) {","            obj[QueryString.unescape(tuple.shift())] = QueryString.unescape(tuple.join(eq));","        }","    }","    return obj;","};","","QueryString.unescape = function (s) {","    return decodeURIComponent(s.replace(/\\+/g, ' '));","};","","","}, '3.16.0', {\"requires\": [\"yui-base\"]});","","}());"]};
}
var __cov_PMzKwfPcgBFlH$IPnihRVQ = __coverage__['build/querystring-parse-simple/querystring-parse-simple.js'];
__cov_PMzKwfPcgBFlH$IPnihRVQ.s['1']++;YUI.add('querystring-parse-simple',function(Y,NAME){__cov_PMzKwfPcgBFlH$IPnihRVQ.f['1']++;__cov_PMzKwfPcgBFlH$IPnihRVQ.s['2']++;var QueryString=Y.namespace('QueryString');__cov_PMzKwfPcgBFlH$IPnihRVQ.s['3']++;QueryString.parse=function(qs,sep,eq){__cov_PMzKwfPcgBFlH$IPnihRVQ.f['2']++;__cov_PMzKwfPcgBFlH$IPnihRVQ.s['4']++;sep=(__cov_PMzKwfPcgBFlH$IPnihRVQ.b['1'][0]++,sep)||(__cov_PMzKwfPcgBFlH$IPnihRVQ.b['1'][1]++,'&');__cov_PMzKwfPcgBFlH$IPnihRVQ.s['5']++;eq=(__cov_PMzKwfPcgBFlH$IPnihRVQ.b['2'][0]++,eq)||(__cov_PMzKwfPcgBFlH$IPnihRVQ.b['2'][1]++,'=');__cov_PMzKwfPcgBFlH$IPnihRVQ.s['6']++;for(var obj={},i=0,pieces=qs.split(sep),l=pieces.length,tuple;i<l;i++){__cov_PMzKwfPcgBFlH$IPnihRVQ.s['7']++;tuple=pieces[i].split(eq);__cov_PMzKwfPcgBFlH$IPnihRVQ.s['8']++;if(tuple.length>0){__cov_PMzKwfPcgBFlH$IPnihRVQ.b['3'][0]++;__cov_PMzKwfPcgBFlH$IPnihRVQ.s['9']++;obj[QueryString.unescape(tuple.shift())]=QueryString.unescape(tuple.join(eq));}else{__cov_PMzKwfPcgBFlH$IPnihRVQ.b['3'][1]++;}}__cov_PMzKwfPcgBFlH$IPnihRVQ.s['10']++;return obj;};__cov_PMzKwfPcgBFlH$IPnihRVQ.s['11']++;QueryString.unescape=function(s){__cov_PMzKwfPcgBFlH$IPnihRVQ.f['3']++;__cov_PMzKwfPcgBFlH$IPnihRVQ.s['12']++;return decodeURIComponent(s.replace(/\+/g,' '));};},'3.16.0',{'requires':['yui-base']});