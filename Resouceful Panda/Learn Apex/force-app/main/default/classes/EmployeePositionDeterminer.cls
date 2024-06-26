public class EmployeePositionDeterminer {
    public String determineEmployeePosition(String name, Decimal salary) {
        String returner;
        if(salary==5000) {
            returner=name+ ' is assigned to the position of Manager with a salary of $'+salary+'.';
        }
        else if(salary<5000) {
            returner=name+ ' is assigned to the position of Associate with a salary of $'+salary+'.';
    	}
        return returner;
    } 
}