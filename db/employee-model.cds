// Table
namespace emp.db;


using {
    cuid,
    managed
} from '@sap/cds/common';

entity EMPLOYEE : cuid, managed {
    NAME    : String(15) @title         : 'Name'
                         @UI.Placeholder: 'Name ok';
    DOB     : Date;
    ADDRESS : String(30);
    PHONENO : Int16;
    EMAIL   : String(20);
}


entity DEPARTMRNT : cuid, managed {
    NAME     : String(20);
    LOCATION : String(15);
    CONTACT  : String(20);

}
