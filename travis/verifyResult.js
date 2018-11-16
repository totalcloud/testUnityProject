var convert = require('xml-js');
var flat = require('flat');
var assert = require('assert');

var fs = require('fs');

result = process.argv[2];

console.log("using result file = "+ result);

var xml = fs.readFileSync(result);

var res = JSON.parse(convert.xml2json(xml));

flat = flat(res);

let f = Object.keys(flat).filter(x => x.endsWith("result")).reduce((a,e) => {
	a[e] = flat[e]
	return a;
}, {});

console.log(f);

for(let key of Object.keys(f)){
	assert(f[key].startsWith("Passed"));
}