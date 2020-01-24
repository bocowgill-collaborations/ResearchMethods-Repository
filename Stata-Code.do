/* Type these commands to install the "estout" package: 

ssc install estout

Also: Note you can type help [command] into Stata to get help on any command. 
*/

* Read in data: 
insheet using Ai-Experiment-Data.csv, comma names clear

* Label your variables
label variable readethicsarticle "Read Ethics Article"
label variable recommendsaiadoption "Recommends AI"

* Run regression: 
reg recommendsaiadoption readethicsarticle

* Store regression
eststo regression_one 

**********************************
* FOR PEOPLE USING LaTeX: 
* Create output options. The below defaults are common and can be customized. 
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) prehead(\begin{tabular}{l*{14}{c}}) postfoot(\end{tabular}) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_one using Ai-Experiment-Table.tex, $tableoptions keep(readethicsarticle) 


**********************************
* FOR PEOPLE USING MICROSOFT: 
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_one using Ai-Experiment-Table.rtf, $tableoptions keep(readethicsarticle) 
