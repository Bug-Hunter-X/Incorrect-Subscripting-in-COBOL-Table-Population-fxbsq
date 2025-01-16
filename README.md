# COBOL Subscripting Bug

This repository demonstrates a common error in COBOL programming involving incorrect subscripting when working with tables (OCCURS clause). The bug involves using the index directly as a subscript when accessing table elements, leading to unexpected results.

## Bug Description
The provided COBOL code aims to populate a table. However, there's a flaw in how the subscript is handled. The code uses the current index (WS-COUNT) directly as a subscript within the table elements (WS-ITEM and WS-QTY), which is incorrect.  The proper way involves using the index within the OCCURS clause.

## Solution
The solution involves changing the way table elements are accessed. The index (WS-COUNT) should be used to correctly identify the position within the table. This is accomplished by placing the index directly after the table name and enclosing it in parentheses.

## How to Reproduce
1. Compile the `bug.cob` code. 
2. Execute the compiled program. 
3. Observe the potential unexpected results and/or errors.
4. Compare this to the corrected code in `bugSolution.cob`

## Lessons Learned
This example highlights the importance of paying close attention to how subscripts are used with OCCURS clauses in COBOL to ensure data integrity and correct array access.  Failing to do so can result in runtime errors, data corruption, and unexpected program behavior.