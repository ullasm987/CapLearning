namespace emp.db;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity EMPLOYEE : cuid, managed
{
    NAME : String(15)
        @title : 'Name'
        @UI.Placeholder : 'Name ok';
    DOB : Date;
    ADDRESS : String(30);
    PHONENO : Int16;
    EMAIL : String(40);
    dEPARTMRNT : Association to one DEPARTMRNT;
}

entity DEPARTMRNT : cuid, managed
{
    NAME : String(20);
    LOCATION : String(15);
    CONTACT : String(20);
    eMPLOYEES : Association to many EMPLOYEE on eMPLOYEES.dEPARTMRNT = $self;
}
