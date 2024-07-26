NAMESPACE Stan.Standardizer

    FUNCTION_BLOCK ItemCounterTiap

        VAR_INPUT
            Execute : BOOL;
        END_VAR
        VAR_OUTPUT
            Counts : DINT;
            Message : STRING;
        END_VAR
        VAR
            _counter : ItemCounter;
            _executeOld : BOOL;
            _initDone : BOOL;
        END_VAR
        VAR_TEMP
            tempExecuteRis : BOOL;
        END_VAR

        tempExecuteRis := Execute AND NOT _executeOld;
        _executeOld := Execute;

        IF(NOT(_initDone)) THEN
            // Message := counter.toString();
            _initDone := true;
        END_IF;
        IF(tempExecuteRis) THEN
            _counter.CountItem();
            Counts := _counter.GetCounterValue();
            // Message := _counter.ToString();
        END_IF;

    END_FUNCTION_BLOCK

END_NAMESPACE