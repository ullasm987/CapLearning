sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'um.project1',
            componentId: 'employeesList',
            contextPath: '/employees'
        },
        CustomPageDefinitions
    );
});