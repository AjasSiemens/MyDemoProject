///USING AxUnit;
USING Stan;

NAMESPACE MyTest

    {TestFixture}
    CLASS MyTestFixture

        VAR PROTECTED
            testInstance : ItemCounter;
        END_VAR

        {Test}
        METHOD PUBLIC GetValue
            VAR_TEMP
                result : DINT;
            END_VAR

            testInstance.SetCounterValue(10);
            result := testInstance.GetCounterValue();

            ///Assert.Equal(actual := result, expected := 10);
        
        END_METHOD
        
        {Test}
        METHOD PUBLIC SetCounterSmall
            VAR_TEMP
                result : DINT;
            END_VAR

            testInstance.SetCounterValue(10);
            testInstance.SetCounterValue(-1);

            result := testInstance.GetCounterValue();

            ///Assert.Equal(actual := result, expected := 0);
        
        END_METHOD
        
        {Test}
        METHOD PUBLIC CountUp
            VAR_TEMP
                result : DINT;
            END_VAR

            testInstance.SetCounterValue(10);
            testInstance.CountItem();

            result := testInstance.GetCounterValue();

            ///Assert.Equal(actual := result, expected := 10);
        
        END_METHOD
    END_CLASS

END_NAMESPACE
