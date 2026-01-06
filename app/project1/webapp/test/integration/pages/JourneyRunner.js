sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"um/project1/test/integration/pages/employeesList",
	"um/project1/test/integration/pages/employeesObjectPage"
], function (JourneyRunner, employeesList, employeesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('um/project1') + '/test/flp.html#app-preview',
        pages: {
			onTheemployeesList: employeesList,
			onTheemployeesObjectPage: employeesObjectPage
        },
        async: true
    });

    return runner;
});

