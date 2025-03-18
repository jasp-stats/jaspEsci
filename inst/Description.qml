import QtQuick		2.12
import JASP.Module	1.0

Description
{
	name		    : "jaspesci"
	title		    : qsTr("ESCI (Beta)")
	description	: qsTr("ESCI in JASP")
	version		  : "0.1"
	author		  : "Robert Calin-Jageman"
	maintainer	: "Robert Calin-Jageman <rcalinjageman@dom.edu>"
	website		  : "https://thenewstatistics.com/"
	icon		    : "esci_logo.svg"
	license		  : "GPL (>= 2)"

	Analysis
	{
		title:	qsTr("ESCI: Describe")
		menu:	qsTr("Describe")
		func:	"jasp_describe"
	}

	GroupTitle
	{
		title:	qsTr("Means and Medians")
	}

	Analysis
	{
		title:	qsTr("ESCI Means and Medians: Single Group")
		menu:	qsTr("Single Group")
		func:	"jasp_estimate_mdiff_one"
	}

	Analysis
	{
		title:	qsTr("ESCI Means and Medians: Two Groups")
		menu:	qsTr("Two Groups")
		func:	"jasp_estimate_mdiff_two"
	}

	Analysis
	{
		title:	qsTr("ESCI Means and Medians: Paired")
		menu:	qsTr("Paired")
		func:	"jasp_estimate_mdiff_paired"
	}

	Analysis
	{
		title:	qsTr("ESCI Means and Medians: Independent Groups Contrast")
		menu:	qsTr("Independent Groups Contrast")
		func:	"jasp_estimate_mdiff_ind_contrast"
	}

	Analysis
	{
		title:	qsTr("ESCI Means and Medians: 2x2 Factorial")
		menu:	qsTr("2x2 Factorial")
		func:	"jasp_estimate_mdiff_2x2"
	}


	GroupTitle
	{
		title:	qsTr("Correlations")
	}

	Analysis
	{
		title:	qsTr("ESCI Correlations: Single Group")
		menu:	qsTr("Single Group")
		func:	"jasp_estimate_r"
	}

	Analysis
	{
		title:	qsTr("ESCI Correlations: Two Groups")
		menu:	qsTr("Two Groups")
		func:	"jasp_estimate_rdiff_two"
	}


	GroupTitle
	{
		title:	qsTr("Proportions")
	}

	Analysis
	{
		title:	qsTr("ESCI Proportions: Single Group")
		menu:	qsTr("Single Group")
		func:	"jasp_estimate_pdiff_one"
	}

	Analysis
	{
		title:	qsTr("ESCI Proportions: Two Groups")
		menu:	qsTr("Two Groups")
		func:	"jasp_estimate_pdiff_two"
	}

	Analysis
	{
		title:	qsTr("ESCI Proportions: Paired")
		menu:	qsTr("Paired")
		func:	"jasp_estimate_pdiff_paired"
	}


	GroupTitle
	{
		title:	qsTr("Meta-Analysis")
	}

	Analysis
	{
		title:	qsTr("ESCI Meta-Analysis: Means")
		menu:	qsTr("Means")
		func:	"jasp_meta_mean"
	}

	Analysis
	{
		title:	qsTr("ESCI Meta-Analysis: Difference in Means")
		menu:	qsTr("Difference in Means")
		func:	"jasp_meta_mdiff_two"
	}

	Analysis
	{
		title:	qsTr("ESCI Meta-Analysis: Correlations")
		menu:	qsTr("Correlations")
		func:	"jasp_meta_r"
	}

	Analysis
	{
		title:	qsTr("ESCI Meta-Analysis: Proportions")
		menu:	qsTr("Proportions")
		func:	"jasp_meta_proportion"
	}

		Analysis
	{
	  title: qsTr("ESCI Meta-Anlaysis: Difference in Proportions")
		menu:	qsTr("Difference in Proportions")
		func:	"jasp_meta_pdiff_two"
	}

}
