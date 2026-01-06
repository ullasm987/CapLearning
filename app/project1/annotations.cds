using empdep as service from '../../srv/employee-service';
annotate service.employees with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
                Label : '{i18n>Address1}',
                Value : ADDRESS,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Phoneno}',
                Value : PHONENO,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email1}',
                Value : EMAIL,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Employee in details',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Second Section',
            ID : 'SecondSection',
            Target : '@UI.FieldGroup#SecondSection',
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
            Label : '{i18n>Address}',
            Value : ADDRESS,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>PhoneNumber}',
            Value : PHONENO,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email}',
            Value : EMAIL,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'empdep.EntityContainer/myAction',
            Label : '{i18n>TestMyaction}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'empdep.resign',
            Label : '{i18n>Resign}',
            Inline : true,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'empdep.createEmployee',
            Label : '{i18n>Createemployee}',
        },
    ],
    UI.SelectionFields : [
        NAME,
        EMAIL,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : NAME,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'empdep.EntityContainer/myAction',
            Label : 'Action1',
            Criticality : #Positive,
        },
    ],
    UI.FieldGroup #SecondSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : NAME,
            },
            {
                $Type : 'UI.DataField',
                Value : PHONENO,
                Label : 'PHONENO',
            },
        ],
    },
    UI.DataPoint #PHONENO : {
        Value : PHONENO,
        Visualization : #Rating,
        TargetValue : 5,
    },
    );

annotate service.employees with {
    EMAIL @Common.Label : '{i18n>Email}'
};

annotate service.employees with {
    NAME @(
        Common.Label : '{i18n>Name}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'employees',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : NAME,
                    ValueListProperty : 'NAME',
                },
            ],
            Label : 'N',
        },
        Common.ValueListWithFixedValues : false,
        Common.Text : EMAIL,
        Common.Text.@UI.TextArrangement : #TextFirst,
    )
};

