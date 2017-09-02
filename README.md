# Revolut position candidate test  

Task:  

Make an app that exchanges currencies using [ECB rates](http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml)  

Requirements:  
* Use Objective-C language  
* Exchange rates should be updating every 30 seconds  
* 3 currencies to be exchanged: EUR, USD, GBP  
* 2 currencies are shown on screen at one time. Switch between currencies using carousel (after last currency goes first). User can edit either of currency fields causing second to recalculate its value. Also should recalculate field when switching between currencies.
* Show active currency rate  
* On “Exchange” tap perform exchange operation  
* User has 100 units of each currency on launch of the app  
* If the user has insufficient funds before exchange, need to inform him about that  

Extra attention to code quality.  

You are free to use any external dependencies if you need them. (But do not abuse them)  
You are not obliged to reproduce the design attached, just need to make the app look user-friendly and easy to use.  


### ECB rates file example:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<gesmes:Envelope xmlns:gesmes="http://www.gesmes.org/xml/2002-08-01" xmlns="http://www.ecb.int/vocabulary/2002-08-01/eurofxref">
	<gesmes:subject>Reference rates</gesmes:subject>
	<gesmes:Sender>
		<gesmes:name>European Central Bank</gesmes:name>
	</gesmes:Sender>
	<Cube>
		<Cube time='2017-09-01'>
			<Cube currency='USD' rate='1.1920'/>
			<Cube currency='GBP' rate='0.92075'/>
			<Cube currency='RUB' rate='68.8223'/>
		</Cube>
	</Cube>
</gesmes:Envelope>
```

### UI Example:

![](https://github.com/podaenur/Revolut/blob/master/UI_example.png)


### A sample video showing app workflow:  

<a href="https://www.youtube.com/watch?v=c0zPSiKYipc
" target="_blank"><img src="https://github.com/podaenur/Revolut/blob/master/example_video_thumb.png" 
alt="IMAGE ALT TEXT HERE" width="560" height="315" border="0" /></a>

<a href="https://github.com/podaenur/Revolut/blob/master/Revolut%20-%20How%20to%20Exchange%20Currencies.mp4
" target="_blank"><img src="https://github.com/podaenur/Revolut/blob/master/example_video_thumb.png" 
alt="IMAGE ALT TEXT HERE" width="560" height="315" border="0" /></a>
