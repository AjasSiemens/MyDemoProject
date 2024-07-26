NAMESPACE Stan
    // This class counts items
    CLASS PUBLIC ItemCounter
        VAR PROTECTED
            _value : DINT;
        END_VAR

        // Set CounterValue to value if value >0; If value <0 then CounterValue will be set to 0
        METHOD PUBLIC SetCounterValue
            VAR_INPUT
                value : DINT;
            END_VAR
            IF (value < 0) THEN
                _value := 0;
                RETURN;
            END_IF;
            _value := value;
        END_METHOD

        // Increase the counter by value 1
        METHOD PUBLIC CountItem
            _value := _value + DINT#1;
        END_METHOD

        // Returns the actual counter value
        METHOD PUBLIC GetCounterValue : DINT
            GetCounterValue := _value;
        END_METHOD
    END_CLASS
END_NAMESPACE
