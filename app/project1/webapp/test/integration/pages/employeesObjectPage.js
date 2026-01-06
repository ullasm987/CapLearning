sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'um.project1',
            componentId: 'employeesObjectPage',
            contextPath: '/employees'
        },
        CustomPageDefinitions
    );
});