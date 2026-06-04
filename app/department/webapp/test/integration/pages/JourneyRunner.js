sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"department/test/integration/pages/departmentList",
	"department/test/integration/pages/departmentObjectPage",
	"department/test/integration/pages/employeesObjectPage"
], function (JourneyRunner, departmentList, departmentObjectPage, employeesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('department') + '/test/flp.html#app-preview',
        pages: {
			onThedepartmentList: departmentList,
			onThedepartmentObjectPage: departmentObjectPage,
			onTheemployeesObjectPage: employeesObjectPage
        },
        async: true
    });

    return runner;
});

