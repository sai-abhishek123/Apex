@isTest 
private class TestEmployeePositionDeterminer {
    @isTest static void Test1() {
        EmployeePositionDeterminer e=new EmployeePositionDeterminer();
        String name='TESTABC DEF';
        Decimal salary=4000;
        System.assertEquals('TESTABC DEF is assigned to the position of Associate with a salary of $4000.',e.determineEmployeePosition(salary, name));
    }
    @isTest static void Test2() {
        EmployeePositionDeterminer e=new EmployeePositionDeterminer();
        String name='TESTABC DEF';
        Decimal salary=5000;
        System.assertEquals('TESTABC DEF is assigned to the position of Manager with a salary of $5000.',e.determineEmployeePosition(salary, name));
    }
}