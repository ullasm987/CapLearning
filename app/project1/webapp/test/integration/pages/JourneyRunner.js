sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/employeesList",
	"project1/test/integration/pages/employeesObjectPage"
], function (JourneyRunner, employeesList, employeesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheemployeesList: employeesList,
			onTheemployeesObjectPage: employeesObjectPage
        },
        async: true
    });

    return runner;
});

