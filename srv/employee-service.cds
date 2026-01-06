using emp.db as db from '../db/employee-model';


service empdep {
    @odata.draft.enabled
    entity employees  as select from db.EMPLOYEE
                         // Bound Actions
        actions {
            action resign(name: String);
            action createEmployee(name: String);
            action createProject(name: String);
        };

    entity department as select from db.DEPARTMRNT;
    function testFunction(name: String)         returns String;
    action   myAction(name: String, test: Date) returns String;

}

annotate empdep with @( requires: 'Manager' );


// annotate empdepService.employees with @( //Design Level Annotation
// UI: {
//     //LineItem for DISPLAY fields in COLUMNS
//     LineItem              : [
//         {
//             $Type: 'UI.DataField',
//             Value: NAME,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: DOB,
//         },
//         {
//             $Type: 'UI.DataField',
//             Value: PHONENO,
//         },
//     ],
//     //SelectionFields for search help fields
//     SelectionFields       : [NAME],

//     // Facets to create or to group the data
//     FieldGroup #AdminInfo : {
//         $Type: 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type: 'UI.DataField',
//                 Value: NAME,

//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: DOB,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PHONENO,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: EMAIL,
//             },
//         ],
//     },
//     FieldGroup #GenralInfo: {
//         $Type: 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type: 'UI.DataField',
//                 Value: NAME,

//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: DOB,
//             },
//             {
//                 $Type: 'UI.DataField',
//                 Value: PHONENO,
//             },
//         ],
//     },

//     Facets                : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             Target: '@UI.FieldGroup#AdminInfo',
//             Label : 'Admin Information',
//             ID    : 'idAdmin',
//         },
//         {
//             $Type : 'UI.ReferenceFacet',
//             Target: '@UI.FieldGroup#GenralInfo',
//             Label : 'Basic Information',
//             ID    : 'idBasic',
//         },

//     ],


// }

// ) { //Property level annotation
//     DOB     @title: 'Date of birth';
//     ADDRESS @title: 'Address';
//     PHONENO @title: 'Phone Number';
//     EMAIL   @title: 'Email';

// }
