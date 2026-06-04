using EmployeeDepartmentService as service from '../../srv/employee-service';
annotate service.employees with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : NAME,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Dob}',
                Value : DOB,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Address}',
                Value : ADDRESS,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Phoneno}',
                Value : PHONENO,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email}',
                Value : EMAIL,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Admin Information',
            ID : 'AdminInformation',
            Target : '@UI.FieldGroup#AdminInformation',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : NAME,
            Label : '{i18n>Name}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Dob}',
            Value : DOB,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Address}',
            Value : ADDRESS,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Phoneno}',
            Value : PHONENO,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email}',
            Value : EMAIL,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'EmployeeDepartmentService.EntityContainer/myAction',
            Label : '{i18n>Myaction}',
        },
    ],
    UI.SelectionFields : [
        EMAIL,
    ],
    UI.FieldGroup #AdminInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
        ],
    },
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : NAME,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.employees with {
    EMAIL @(
        Common.Label : '{i18n>Email}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'employees',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : EMAIL,
                    ValueListProperty : 'EMAIL',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'NAME',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
        Common.Text : NAME,
        )
};

