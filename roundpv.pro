;------start
;+
; NAME:
; ROUNDPV
;
; PURPOSE:
; This function returns a rounded value to a specified place value for Integer, Long, Float, And
;  Double precision values.
;
; CATEGORY:
; Miscellaneous, Math
;
; CALLING SEQUENCE:
;  Result = RoundPV(Value, PlaceValue)
;
;
; INPUTS:
;  Value  A scalar or vector of type integer, long integer, float or double precisions.
; PlaceValue  An integer specifying the plave value to round toward. Positive and negative values
;  are permitted.
;
; OPTIONAL INPUTS:
; None
;
; KEYWORD PARAMETERS:
; None
;
; OUTPUTS:
; This function returns the rounded value to the spcified place value.
;
; OPTIONAL OUTPUTS:
; None
;
; COMMON BLOCKS:
; None.
;
; SIDE EFFECTS:
; None known.
;
; RESTRICTIONS:
; None known.
;
; EXAMPLE:
; X = 321.489
; For i = -2, 2 Do Print, RoundPV(X, i)
;      321.480
;      321.400
;      321.000
;      320.000
;      300.000
;
; Specifying a negative place value for an integer or long type data value has no effect.  For example
; X = 321L
; For i = -2, 2 Do Print, RoundPV(X, i)
;         321
;         321
;         321
;         320
;         300
;
; MODIFICATION HISTORY:
;  Written by: Ben Tupper  30 SEP 1999
; email pemaquidriver@tidewater.net
; tel:  (207) 563 - 1048
;   248 Lower Round Pond Road
; POB 106
; Bristol, ME 04539-0106
;
;  6 FEB 2000  Dropped call to home grown TYPE function in favor of SIZE function
;    with STRUCTURE keyword set.
;
;-


FUNCTION RoundPV, X, PV

If N_elements(PV) EQ 0 Then PV = 0
Sz = Size(X, /Str)

Case Sz.Type of

2: X2 =  Fix(Float(Long(Float(X)*10.^(-PV)))*10.^PV)
3: X2 =  Long(Float(Long(FLoat(X)*10.^(-PV)))*10.^PV)
4: X2 = Float(Long(X*10.^(-PV)))*10.^PV
5: X2 = Double(Long(X*10.d^(-PV)))*10.d^PV

Else:

EndCase

Return, X2

END


;------finish
