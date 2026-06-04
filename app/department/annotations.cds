using EmployeeDepartmentService as service from '../../srv/employee-service';
annotate service.department with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'NAME',
                Value : NAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LOCATION',
                Value : LOCATION,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CONTACT',
                Value : CONTACT,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'NAME',
            Value : NAME,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LOCATION',
            Value : LOCATION,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CONTACT',
            Value : CONTACT,
        },
    ],
);

