module("calculator",{
    setup: function() {
        this.calculator = new Calculator();
    },
    teardown: function() {
    }
});
test("sum 1+2",function(){
   equal(this.calculator.sum(1,2),3)
});
