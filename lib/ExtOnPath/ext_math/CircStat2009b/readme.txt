CircStat for Matlab
=======================

Toolbox for circular statistics with Matlab. 

Authors: Philipp Berens 
         Marc J. Velasco
Email: berens@tuebingen.mpg.de
Homepage: http://www.kyb.tuebingen.mpg.de/~berens/circStat.html

Contributors:
Tal Krasovsky

Reference:
P. Berens, CircStat: A Matlab Toolbox for Circular Statistics, Journal of Statistical Software, accepted, 2009
http://www.kyb.mpg.de/publication.html?publ=6037

Please cite this paper when the provided code is used. See licensing terms for details.

Contents:
circ_r 				Resultant vector length
circ_mean 			Mean direction of a sample of circular data
circ_axial			Mean direction for axial data
circ_median			Median direction of a sample of circular data
circ_std 			Dispersion around the mean direction (std, mardia)
circ_var 			Circular variance
circ_skewness		Circular skewness
circ_kurtosis		Circular kurtosis
circ_moment			Circular p-th moment
circ_dist			Distances around a circle
circ_dist2			Pairwise distances around a circle
circ_confmean 		Confidence intervals for mean direction
circ_stats			Summary statistics

circ_rtest			Rayleigh's test for nonuniformity
circ_otest			Hodges-Ajne test (omnibus test) for nonuniformity
circ_raotest		Rao's spacing test for nonuniformity
circ_vtest			V-Test for nonuniformity with known mean direction
circ_medtest		Test for median angle
circ_mtest			One-sample test for specified mean direction
circ_wwtest			Multi-sample test for equal means, one-factor ANOVA
circ_hktest 		Two-factor ANOVA
circ_symtest		Test for symmetry around median angle

circ_corrcc			Circular-circular correlation coefficient
circ_corrcl			Circular-linear correlation coefficient

circ_kappa 			Compute concentration parameter of a vm distribution

circ_plot			Visualization for circular data
circ_clust    Simple clustering for circular data

rad2ang				Convert radian to angular values
ang2rad				Convert angular to radian values
bessip				Generic Bessel function of order p
bessi0				Bessel function of order 0
bessi1				Bessel function of order 1

All functions take arguments in radians (expect for ang2rad). For a detailed description of arguments and outputs consult the help text in the files.

References:
- E. Batschelet, Circular Statistics in Biology, Academic Press, 1981
- N.I. Fisher, Statistical analysis of circular data, Cambridge University Press, 1996
- S.R. Jammalamadaka et al., Topics in circular statistics, World Scientific, 2001
- J.H. Zar, Biostatistical Analysis, Prentice Hall, 1999


The implementation follows in most cases 'Biostatistical Analysis' and all referenced equations and tables are taken from this book, if not otherwise noted. In some cases, the other two books were preferred for implementation was more straightforward for solutions presented there.

Versions:
2006: Initial release
2008: The code has been cleaned up, some extra functionality and new tests have been added and some bugs removed. New features include confidence limits on the mean, the vtest, mtest, wwtest and corrcl commands for additional hypothesis testing and correlation analysis. 
2009: Added median, otest, gtest, raotest, symtest, expanded wwtest to multi-sample testing, updated p-value formula for Rayleigh test, updated std for additional options, added stats, all functions for density estimation/distributions are new. Added Marc J. Velasco as second author.
2009: Added several more complicated tests, journal paper reference.

If you have suggestions, bugs or feature requests or want to contribute code, please email us.

Disclaimer:
All functions in this toolbox were implemented with care and tested on the examples presented in 'Biostatistical Analysis' were possible. Nevertheless, they may contain errors or bugs, which may affect the outcome of your analysis. We do not take responsibility for any harm coming from using this toolbox, neither if it is caused by errors in the software nor if it is caused by its improper application. Please email us any bugs you find.

By Philipp Berens and Marc J. Velasco, 2009
berens@tuebingen.mpg.de , velasco@ccs.fau.edu - www.kyb.mpg.de/~berens/circStat.html
Distributed under Open Source BSD License




