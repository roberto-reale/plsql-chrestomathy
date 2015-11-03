--------------------------------------------------------------------------------
--
--  A PL/SQL chrestomathy
-- 
--  Module:    math
--  Submodule: math_functions
--  Purpose:   various functions of interest to mathematicians
--
--  Copyright (c) 2014-5 Roberto Reale
--  
--  Permission is hereby granted, free of charge, to any person obtaining a
--  copy of this software and associated documentation files (the "Software"),
--  to deal in the Software without restriction, including without limitation
--  the rights to use, copy, modify, merge, publish, distribute, sublicense,
--  and/or sell copies of the Software, and to permit persons to whom the
--  Software is furnished to do so, subject to the following conditions:
--  
--  The above copyright notice and this permission notice shall be included in
--  all copies or substantial portions of the Software.
--  
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
--  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
--  DEALINGS IN THE SOFTWARE.
-- 
--------------------------------------------------------------------------------



CREATE OR REPLACE PACKAGE MATH_FUNCTIONS AS
    FUNCTION FACTORIAL(i_input IN INTEGER) RETURN INTEGER;
END MATH_FUNCTIONS;
/

CREATE OR REPLACE PACKAGE BODY MATH_FUNCTIONS AS
    FUNCTION FACTORIAL(i_input IN INTEGER) RETURN INTEGER IS
        i_result  INTEGER;
    BEGIN
        IF i_input = 0 OR i_input = 1 THEN
            i_result := 1;
        ELSE
            i_result := i_input * factorial (i_input - 1);
        END IF;
        RETURN i_result;
    END FACTORIAL;
END MATH_FUNCTIONS;
/ 

--  ex: ts=4 sw=4 et filetype=sql
