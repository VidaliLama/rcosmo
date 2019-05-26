# rcosmo 1.0.0
This is the first release.


# rcosmo 1.01.0
* introduces depth_test to plot functions so that objects such
  as window boundaries and plot labels are not easily obscured
* more effective use of memory mapping to avoid reading data into
  memory unnecessarily, especially when using the win argument
  of CMBDataFrame function
* plot.CMBWindow now closes the polygon for neater visualisation
* fixes a small typo bug in nestSearch function
* updated links in rcosmo.R for Update and BugReports
* updated link in downloadCMBMap for data source with nside = 2048
* introduces check in nestSearch that log2 of nside must be integer
* fixes a small typo bug in qstat function
* new function geoAngle is added
* explicit default (nested) for coords parameter in CMBDataFrame
* improved HPDataFrame inferral of assumedUniquePix 
  and healpixCentered attributes
* extends as.CMBDataFrame to work on HPDataFrame and 
  adds drop.coords parameter to as.CMBDataFrame
* coords.HPDataFrame now behaves more like coords.CMBDataFrame,
  where leaving new.coords missing will return only the
  value of the attribute named coords
* bug fix HPDataFrame producing unique pixel indices when 
  delete.duplicates = TRUE
