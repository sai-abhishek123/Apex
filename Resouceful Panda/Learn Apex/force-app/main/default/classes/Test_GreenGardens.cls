@isTest
private class Test_GreenGardens {
    @isTest static void Test1() {
        GreenGardens gg=new GreenGardens();
        Decimal a=gg.calculateWateringAmount(31,39);
        System.assertEquals(a,1,'Answer is 1');
    }
    @isTest static void Test2() {
        GreenGardens gg2=new GreenGardens();
        Decimal a2=gg2.calculateWateringAmount(29, 39);
        System.assertEquals(a2,0.5,'Answer is 0.5');
    }
}