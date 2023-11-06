pro blurring_special

; parameters
;d            = 0.8 ; 30. ; 8.1 ; 6.5 ; 2.4 ; 1. ; 0.8 ; metres, telescope diameter
;z            = 0.5 ; 8. ; 6.3 ; 4. ; 1. ; 0.5 ; 0.2 ; 0.15 ; 0.001 ; source redshift
H_0           = 70. ; kilometres/second/Megaparsec
c             = 2.9979e8 ; meters per second, speed of light in vacuum
l_P           = 1.6106e-35 ; meters, Planck length
conversion    = 3.08568e22 ; meters per megaparsec
a_0           = 1. ; 2. ; 1.2 ; 1.
alpha_low     = 0.65 ; 0.71 ; 0.7 ; 0.68 ; 0.67 ; 0.667 ; 2./3. ; 0.66666667 ; 0.66 ; 0.65 ; 0.54
;alpha_high    = 0.735 ; 0.72 ; 0.71 ; 0.7 ; 0.68 ; 0.67 ; 0.667 ; 2./3. ; 0.66666667 ; 0.66 ; 0.65 ; 0.54
h_bar         = 6.626020e-34/(2.*!pi) ; Joule seconds 
eV            = 1.60217733e-19 ; Joules
energy_GZK    = 6.e19 ; electron volts
horizon       = 30. ;  15. ; 27. ; 30. ; 35. ; 40. ; 45. ; 60. ; 90. ; 120. ; 160. ; 180. ; 360. ; 540 ; 720. ; degrees
theta         = 1. ; 0.5 ; 0.8 ; 1. ; 2. ; 10. ; 45. ; 60. ;  70. ; 90. ; 100. ; 120. ; degrees
resolution    = 0.052 ; 0.001 ; 0.01 ; 0.02 ; 0.05 ; 0.1 ; 1. ; degrees, default
halo          = 0.25*resolution ; 0.5*resolution ; resolution ; 1.22*resolution ; 2.*resolution
rho           = 1. ; 0.65 ; 0.7 ; 0.75 ; 0.8 ; 0.9 ; 1. ; default power-law resolution slope
seeing        = 0.5 ; 0.5 ; 0.75 ; 0.8 ; 1. ; arcseconds
delay         = 10000. ; 10000. ; 1. ; 10. ; 100. ; 300. ; 500. ; 1000. ; 3000. ; 5000. ; 10000. ; seconds, default
samples       = 5000 ; 10000 ; 8000 ; 5000 ; 1000 ; 100 ; samples in the calculations
comoving      = 'yes' ; 'no' ; 'yes' ; use the co-moving distance instead of luminosity distance
z_cutoff      = 0. ; 0.001 ; 0.05 ; 0.1 ; 0.145 ; 0.15 ; 0.5 ; 1. ; 2. ; 4. ; 4.35 ; 4.61 ; redshift cut
z_low         = 0.01 ; 0.02 ; 0.015 ; 0.01 ; 0.001 ; 0.0001 ; 0.00001 ; 1.e-6 ; 1.e-7 ; 1.e-8 ; 1.e-9 ; lowest redshift considered in models
z_special     = 0.15 ; redshift of a special target
z_middle      = 0.5 ; 0.1 ; 0.15 ; 0.2 ; 0.5 ; redshift of the "middle" of the distribution, to match previous paper
z_average     = 1.41 ; 1.64 ; redshift, or median, but near the average of the sample
z_high        = 4.61 ; 10. ; 8. ; 6. ; 5. ; 4.61 ; 0.15 ; likely the highest observed redshift, the highest redshift considered in models

; data setup
outlier_name  = 'none' ; 'GRB090510016' ; 'none' ; can force the exclusion of an outlier for both LAT and GBM; 'none' shuts it off
cutoff_date   = '2023' ; '2014' ; '2021' ; '2022' ; '2023' ; cutoff to help show and compare the data as reported in previous paper
horizon_LAT   = 90. ; 70. ; 80. ; 90. ; 100. ; 120. ; 140. ; 180. ; degrees
angles_LAT    = 'roll' ; 'roll' ; 'zenith' ; 'smaller' ; 'larger' ; 'middle' ; if not LAT roll angle, use zenith or some other angle
omit_LAT      = 'no' ; 'no' ; 'yes' ; omit LAT outlier data, avoiding possible positional super-accuracy due to catalog overlap
rescale_LAT   = 'no' ; 'no' ; 'yes' ; plot the LAT resolution data rescaled by the horizon, as per "flux-loss" model of the PSF
horizon_GBM   = 30. ; 30. ; 50. ; 70. ; 90. ; degrees
energies_GBM  = 'peak' ; 'peak' ; 'average' ; 'median' ; whether to use the peak, average or median energy for GBM data
short_GBM     = 0.05 ; 0.1 ; 0.05 ; 0.01 ; 0.001 ; setting an error bar, how much shorter can the wavelength be for GBM data, from peak to mean energy
limit_GBM     = 0.055 ; 1.1 ; 0.001 ; 0.01 ; 0.055 ; 0.1 ; 1. ; 1.1 ; degrees, the lower limit of GBM radii that are not due to cross-reference to LAT
floor_GBM     = 0.055 ; 0.0034 ; degrees, the lower limit of GBM radii that are not due to cross-reference to an UV or optical instrument
delete_GBM    = 'yes' ; 'no' ; yes' ; delete GBM resolution data, where less than the limit of the detector
omit_GBM      = 'no' ; 'no' ; 'yes' ; omit GBM outlier data, avoiding possible positional super-accuracy due to catalog overlap
error_bar     = 1. ; 0.67 ; 1. ; 1.25 ; 1.3 ; 1.33 ; 1.5 ; 2. ; 3. ; number of standard devations to show as errors

; plots setup
display       = 'wide' ; 'wide' ; 'gamma' ; 'xray' ; 'top' ; 'both'
charsize      = 2 ; generic size of labels for plots
charthick     = 2 ; for plot labels, but possibly only for the axes
charsize_plot = 2 ; 2.25 ; 2.33 ; 2.5 ; for plot axes
charsize_label= 2 ; for labels, with the plots, which might be smaller than for the plot axes
charthick_out = 1 ; 2 ; 1 ; for just the xyout labels, possibly thinner than for the axes labels, which are simply set to charthick
charsize_phi  = 2.25 ; for the Phi labels, specifically
show_labels   = 'no' ; 'yes' ; 'no' ; whether to show the GRB-name labels
show_data     = 'yes' ; 'yes' ; 'no' ; whether to show all datapoints, or just special points
show_errors   = 'yes' ; 'yes' ; 'no' ; whether to show the error bars on angles
show_scaling  = 'no' ; 'yes' ; 'no' ; whether to show the rescaled TeV data 
show_shading  = 'yes' ; 'yes' ; 'no' ; whether to show shading of the disallowed regions or blurring
show_smooth   = 'yes' ; 'yes' ; 'no' ; whether to show a smooth range of redshift distribution in blurring
show_contours = 'yes' ; 'yes' ; 'no' ; whether to show the contours
show_densities= 'yes' ; 'yes' ; 'no' ; whether to show density plots
colour_table  = 34 ; 40 ; 39 ; 38 ; 34 ; 33 ; 25 ; 20 ; rainbow colour-table identification number, from standard IDL list
shading_table = 1 ; 1 ; 40 ; 3 ; 1 ; 0 ; colour table for shading, behind the colours (need not necessarily be grey; blue works well)
edging_table  = 3 ; outer edge of shading, can be set to red
x_display     = 1100 ; 600 ; 700 ; 800 ; 900 ; 1100 ; 1500 
y_display     = 1000 ; 800 ; 900 ; 1000
number_lambda = 40 ; 80 ; 50 ; 40 ; 25 ; 20 ; 15 ; number of divisions over range in wavelength
number_theta  = 40 ; 50 ; 40 ; 30 ; 20 ; 15 ; 12 ; number of divisions over range in theta
contours      = 8 ; 5 ; 6 ; 7 ; 8 ; 10 ; 15 ; 20 ; 30 ; 40 ; 50 ; number of contour levels in plots
contours_limit= 0. ; 0.01 ; 0.01 ; 0.05 ; 0.1 ; 0.2 ; 0.25 ; 0.33 ; 0.5 ; 0.75 ; 1.
contours_color= 150 ; 100 ; 150 ; 200 ; 225 ; 255 ; either grey or green or red
;contours_level= [0., 0.001, 0.01, 0.02, 0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
contours_level= [0.01, 0.02, 0.03, 0.05, 0.1, 0.25, 0.5, 0.75, 0.95]
;contours_level= [0.01, 0.05, 0.1, 0.2, 0.5, 0.9]
;contours_level= [0.1, 0.25, 0.5, 0.75, 0.9]
;contours_peak = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
;contours_peak = [0.1, 0.25, 0.5, 0.75, 0.95]
contours_peak = [0.5, 0.75, 0.95]
wavelength_phi= 1.e-19 ; 1.e-28 ; 1.e-29 ; 1.e-30 ; m, to plot levels for Phi labels
wavelength_res= 2.e-8 ; 1.e-7 ; 5.e-7 ; m, to plot levels for resolution labels
wavelength_optical = 0.45e-6 ; meters, for plots
wavelength_ground = 1.e-6 ; meters, for plots
wavelength_infrared = 2.e-6 ; meters, for plots

; wavelength ranges
if display eq 'wide' then begin
 d = 6.5 ; 8. ; 6.5 ; 2.4 ; 0.8 ; metres
 wavelength_low = 1.e-21 ; 1.e-20 ; 1.e-21 ; 2.e-22 ; 1.e-36 ; metres
 wavelength_high = 1.e-5 ; 1.e-4 ; 1.e-3 ; metres
 theta_low = 3.e-8 ; 1.e-6 ; 5.e-7 ; 2.e-8 ; radians
 theta_high = 1.e1 ; 1.e2 ; radians
; limit_GBM = floor_GBM
 delete_GBM = 'yes'
; show_shading = 'no'
 show_smooth = 'no'
 show_data = 'no'
; show_densities = 'no'
; show_contours = 'no'
 charsize_plot = 2.25 ; 2.75 ; 2.5
 charsize_label = 2 ; 2.5
 charsize_phi = 2.33 ; 2.5
endif
if display eq 'gamma' then begin
 d = 1.8 ; 0.8 ; metres
 wavelength_low = 5.e-19 ; 0.4e-17 ; 2.e-18 ; 2.e-19; 1.e-20 ; metres
 wavelength_high = 1.e-13 ; 3.e-9 ; 2.e-14 ; 1.e-13 ; 5.e-10 ; 3.e-9 ; metres
 theta_low = 0.00005 ; 0.00001 ; 0.00005 ; 0.0001 ; 0.01 ; 0.001 ; 0.0001 ; 0.0002 ; 0.00021 ; radians
 theta_high = 7. ; 0.1 ; 0.01 ; 0.1 ; 7. ; 2.*!pi ; 1.e1 ; radians
 x_display     = 700 ; 600 ; 700 ; 800 ; 900 ; 1100 ; 1500 
 y_display     = 1000 ; 800 ; 900 ; 1000
 number_lambda = 40 ; 80 ; 50 ; 40 ; 25 ; 20 ; 15 ; number of divisions over range in wavelength
 number_theta  = 35 ; 50 ; 40 ; 30 ; 20 ; 15 ; 12 ; number of divisions over range in theta
 contours_level= [0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
 angles_LAT    = 'roll'
 energies_GBM  = 'peak ' ; 'average'
; wavelength_phi= 1.e-18
; show_errors  = 'no'
; show_shading = 'no'
; show_scaling = 'no' 
; show_contours = 'no'
; show_data = 'no'
 charsize_plot = 2.25 ; 2.5
 charsize_label = 2.25 ; 2.5
 charsize_phi = 2.33 ; 2.5
endif
if display eq 'xray' then begin
 d = 0.12 ; 1.8 ; 0.8 ; metres
 wavelength_low = 2.e-14 ; 1.e-13 ; 5.e-14 ; 2.e-14 ; 1.e-16 ; metres
 wavelength_high = 3.e-9 ; 4.e-10 ; 2.e-10 ; metres
 theta_low = 0.00005 ; 0.0001 ; 0.015 ; 0.001 ; 0.0001 ; radians
 theta_high = 7. ; 1. ; 1.e1 ; radians
 x_display     = 700 ; 600 ; 700 ; 800 ; 900 ; 1100 ; 1500 
 y_display     = 1000 ; 800 ; 900 ; 1000
 number_lambda = 30 ; 80 ; 50 ; 40 ; 30 ; 25 ; 20 ; 15 ; number of divisions over range in wavelength
 number_theta  = 30 ; 50 ; 40 ; 30 ; 25 ; 20 ; 15 ; 12 ; number of divisions over range in theta
 contours_level= [0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
; energies_GBM  = 'average'
; delete_GBM  = 'no'
; show_smooth = 'yes'
; show_contours = 'no'
 show_errors = 'no'
 charsize_plot = 2.25 ; 2.5
 charsize_label = 2.25 ; 2.5
 charsize_phi = 2.33 ; 2.5
endif
if display eq 'top' then begin
; display = 'gamma'
 d = 1.8 ; 0.8 ; metres
 wavelength_low = 2.e-18 ; 0.4e-17 ; 2.e-18 ; 2.e-19; 1.e-20 ; metres
 wavelength_high = 3.e-9 ; 2.e-14 ; 1.e-13 ; 5.e-10 ; 3.e-9 ; metres
 theta_low = 0.01 ; 0.00001 ; 0.00005 ; 0.0001 ; 0.01 ; 0.001 ; 0.0001 ; 0.0002 ; 0.00021 ; radians
 theta_high = 7. ; 2.*!pi ; 1.e1 ; radians
 x_display     = 1100
 y_display     = 700 ; 800 ; 900 ; 1000
 number_lambda = 40 ; 80 ; 50 ; 40 ; 25 ; 20 ; 15 ; number of divisions over range in wavelength
 number_theta  = 35 ; 50 ; 40 ; 30 ; 20 ; 15 ; 12 ; number of divisions over range in theta
; contours_level= [0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
 contours_level= [0.05, 0.5, 0.9]
 wavelength_phi= 0.7e-18
; show_errors  = 'no'
; show_shading = 'no'
; show_data = 'no'
; show_scaling = 'no' 
 show_contours = 'no'
 charsize_plot = 2.25 ; 2.5
 charsize_label = 2.25 ; 2.5
 charsize_phi = 2.33 ; 2.5
endif
if display eq 'both' then begin
; display = 'gamma'
 d = 1.8 ; 0.8 ; metres
 wavelength_low = 5.e-19 ; 0.4e-17 ; 2.e-18 ; 2.e-19; 1.e-20 ; metres
 wavelength_high = 3.e-9 ; 2.e-14 ; 1.e-13 ; 5.e-10 ; 3.e-9 ; metres
 theta_low = 0.00005 ; 0.00001 ; 0.00005 ; 0.0001 ; 0.01 ; 0.001 ; 0.0001 ; 0.0002 ; 0.00021 ; radians
 theta_high = 7. ; 2.*!pi ; 1.e1 ; radians
; x_display     = 1000
; y_display     = 700 ; 800 ; 900 ; 1000
 number_lambda = 40 ; 80 ; 50 ; 40 ; 25 ; 20 ; 15 ; number of divisions over range in wavelength
 number_theta  = 35 ; 50 ; 40 ; 30 ; 20 ; 15 ; 12 ; number of divisions over range in theta
; contours_level= [0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
; contours_level= [0.05, 0.5, 0.9]
 contours_level= [0.01, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9]
 wavelength_phi= 0.7e-18
; show_errors  = 'no'
; show_shading = 'no'
; show_smooth = 'no'
; show_scaling = 'no' 
; show_contours = 'no'
 charsize_plot = 2. ; 2.5
 charsize_label = 2.25 ; 2.5
 charsize_phi = 2.75 ; 2.5
endif

; define colours for the plots
;distribution = findgen(1000)/1000. ; linear
;distribution = reverse(1.-alog10(findgen(1000)+1.)/alog10(1000.))
;distribution = reverse(1.-alog(findgen(1000)+1.)/alog(1000.))
;distribution = reverse(1.-alog2(findgen(1000)+1.)/alog2(1000.))
;distribution = reverse(1.-alog2(findgen(10000)+1.)/alog2(10000.)) ; same, but more lines
;distribution = reverse(1.-alog2(findgen(samples)+1.)/alog2(float(samples))) ; same, but set to the sample number of lines
;distribution = double(1./(1.09^(-findgen(1000)+1.))/(1.09^998.)) ; exponential, to fit allowable number of lines
;distribution = double(1./(1.09^(-findgen(samples)+1.))/(1.09^(samples-2.))) ; exponential, to fit allowable number of lines, but set to the sample number of lines
distribution = double(1./(1.09^(-findgen(samples/10.)+1.))/(1.09^(samples/10.-2.))) ; exponential, to fit allowable number of lines, but set to the sample number of lines

; plot a legend

; set up the window
window, 0, xsize=200, ysize=850, title='Legend'
wshow, 0
wset, 0
!p.background=255
loadct, 0, /silent
!p.multi=[0, 1, 1]
charsize=2 ; charsize_plot
;charthick=2 ; 1 ; 2

; a white bounding box
plot, [0., 0.], [0., 0.], xrange=[0., 1.], yrange=[0., 100.], charsize=charsize_plot, charthick=charthick, color=255

; Legend
xyouts, -5., 100., 'GRB Data', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5., 90., 'GRB221009A:', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; roll-angles or upper-limits
plotsym, 5, 4., /fill, color=255
oplot, [0.6, 0.6], [80., 80.], psym=8, color=0
plotsym, 5, 3., /fill, color=0
oplot, [0.6, 0.6], [80., 80.], psym=8, color=0
xyouts, -5., 85., 'Localizations', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5., 80., 'on the sky', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5., 75., '(upper limit,', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5., 70., ' above Theta)', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; error-radii
plotsym, 0, 3.5, /fill, color=255
oplot, [0.6, 0.6], [60., 60.], psym=8, color=0
plotsym, 0, 2.5, /fill, color=0
oplot, [0.6, 0.6], [60., 60.], psym=8, color=0
xyouts, -5., 60., 'Error-radius', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; resolutions
plotsym, 4, 4., /fill, color=255
oplot, [0.6, 0.6], [50., 50.], psym=8, color=0
plotsym, 4, 3., /fill, color=0
oplot, [0.6, 0.6], [50., 50.], psym=8, color=0
xyouts, -5., 50., 'Resolutions', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5., 45., '(lower limit,', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5., 40., ' below Theta)', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; contours
xyouts, -5, 25., 'Density contours:', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, [0., 1.], [15., 15.], thick=5, color=100
xyouts, -5, 20., 'All available', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5, 15., 'Fermi data', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5, 10., '(10%-increments,', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, -5, 5., 'white for >50%)', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; make a spot, to fix the length of the plot
plotsym, 0, 0.5, /fill, color=0
;oplot, [0., 0.], [0., 0.], psym=8, color=0
xyouts, 0., 0., '.', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0, /device

; plot a colour-bar

; set up the window
window, 1, xsize=500, ysize=150, title='Redshift Colour-Bar'
wshow, 1
wset, 1
!p.background=255
loadct, 0, /silent
!p.multi=[0, 1, 1]
charsize=2 ; charsize_plot
;charthick=2 ; 1 ; 2

; set up a redshift-dependent colour-bar
redshifts = z_low + z_high*distribution ; smooth distribution from lowest to maximum redshift
redshifts = redshifts(sort(redshifts))
;colours = 254*float(redshifts)/max(redshifts) ; linear scaling with redshifts
colours = 254*distribution*float(redshifts)/max(redshifts) ; scaling as defined above
;print, samples
;print, redshifts
;print, colours
;print, n_elements(colours)
loadct, 0, /silent ; greyscale
colour_bar = colours/max(colours) ; replicate(1., n_elements(samples))

; plot the colour bar
plot, redshifts, colour_bar, /xlog, xstyle=1, xrange=[0.01, z_high], xticks=1, xtitle='Redshift', ystyle=1, yrange=[0., 1.], yticks=1, charsize=charsize, charthick=charthick_out, color=0
loadct, colour_table, /silent ; rainbow, blue to red
for i = 0, n_elements(redshifts)-1 do begin
 colour = colours(i)
 redshift = redshifts(i)
 oplot, [redshift, redshift], [0., 1.], thick=5, color=colour
; oplot, alog10([redshift, redshift]), [0., 1.], thick=5, color=colour
endfor
loadct, 0, /silent ; greyscale
oplot, [z_special, z_special], [0., 1.], thick=5, color=255 ; 0
xyouts, [z_special, z_special]+0.01, [-1., -1.], strmid(strtrim(string(roundpv(z_special, -3)), 1), 0, 4), charsize=charsize, charthick=charthick_out, color=0
xyouts, [z_special, z_special]-0.01, [-0.5, -0.5], '|', charsize=charsize, charthick=charthick_out, color=0
oplot, [z_average, z_average], [0., 1.], thick=5, color=150 ; 0
;xyouts, [z_average, z_average]-0.9, [1.6, 1.6], 'Avg., z='+strmid(strtrim(string(roundpv(z_average, -3)), 1), 0, 4), charsize=charsize, charthick=charthick_out, color=0
xyouts, [z_average, z_average]-1.0, [1.6, 1.6], 'Median z='+strmid(strtrim(string(roundpv(z_average, -3)), 1), 0, 4), charsize=charsize, charthick=charthick_out, color=0
xyouts, [z_average, z_average]-0.075, [1., 1.], '|', charsize=charsize, charthick=charthick_out, color=0

;; test the shading of backgrounds
;loadct, shading_table, /silent ; blue shading
;oplot, [z_low, z_high], [0.75, 0.75], thick=5, color=250 ; i
;oplot, [z_low, z_high], [0.5, 0.5], thick=5, color=225 ; i
;oplot, [z_low, z_high], [0.25, 0.25], thick=5, color=200 ; i
;loadct, edging_table, /silent ; red shading
;oplot, [z_low, z_high], [0.9, 0.9], thick=5, color=250 ; i
;oplot, [z_low, z_high], [0.6, 0.6], thick=5, color=225 ; i
;oplot, [z_low, z_high], [0.3, 0.3], thick=5, color=200 ; i
;;for i = 0, 256-1 do begin
;; oplot, [z_low, z_high], [0., 1.], thick=5, color=i
;;endfor

;; and replot axes to clean up
;axis, xaxis=0, color=0, xstyle=1, xrange=[z_low, z_high], yticks=1, charsize=charsize
;axis, xaxis=1, color=0, xstyle=1, xrange=[z_low, z_high], yticks=1, xtickformat='(A1)'
;axis, yaxis=0, color=0, ystyle=1, yrange=[0., 1.], yticks=1, charsize=charsize
;axis, yaxis=1, color=0, ystyle=1, yrange=[0., 1.], yticks=1, ytickformat='(A1)'

; blot out numbers
blotter = replicate(255, 50, 50) ; a 50 by 50 pixel square, white
tv, blotter, 65, 75

; calculations, starting with a set redshift, horizon and theta; and either the strongest or weakest possible effect
z = z_special ; z_high ; z_cutoff ; z_special ; z_low
;print, 'Alpha range is (low to high): ', alpha_low, alpha_high
;alpha_mean = (alpha_low + alpha_high)/2.
;print, 'Mean alpha = ', alpha_mean,  ' +/- ', (alpha_high-alpha_low)/2.
;phi_rescaling = alpha_high/alpha_low ; 1.10 ; 1.09 ; 1.08 ; 1.07 ; 1.06 ; 1.05 ; 1.04 ; 1.03 ; 1.02 ; 1. ; kludge: rescaling at horizon
;print, 'Rescaling ratio (high/low): ', phi_rescaling
; re-calculating the rescaling instead as just the ratio of theta to the horizon, as this should reproduce the same weakening
;phi_rescaling_angle = 1. + theta/(2.*!pi)
phi_rescaling_angle = 1. + (theta/1.22)/(2.*!pi)
;phi_rescaling_angle = 1. + 2.*(2.*resolution/1.22)/(2.*!pi)
print, 'Ratio of theta over resolution: ', theta/resolution
print, 'Rescaling ratio of angles: ', phi_rescaling_angle
; and now, simply reset the scaling from the angle instead
phi_rescaling = phi_rescaling_angle
alpha_high = phi_rescaling*alpha_low
print, 'Alpha range is (low to high): ', alpha_low, alpha_high
;alpha_mean = (alpha_low + alpha_high)/2.
;print, 'Mean alpha = ', alpha_mean,  ' +/- ', (alpha_high-alpha_low)/2.
;alpha_middle = (1. + 0.25*(theta/1.22)/(2.*!pi))*alpha_low
alpha_middle = (1. + 2.*(2.*resolution/1.22)/(2.*!pi))*alpha_low
alpha_mean = alpha_middle
print, 'Middle alpha = ', alpha_middle
; calculating the effect, starting with strongest
alpha = alpha_low ; strongest effect
;alpha = alpha_high ; weakest effect
wavelength = 10.^(-40.+50.*double(findgen(samples)/float(samples))) ; metres, observed wavelength
angle = 180./!pi*60.*60. ; arcseconds per radian
;omega = 0.3
;omega_wavelength = 0.7
;q_0=(omega + omega_wavelength)/2. - omega_wavelength
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
horizon = horizon*!pi/180. ; radians
theta = theta*!pi/180. ; radians
resolution = resolution*!pi/180. ; radians
halo = halo*!pi/180. ; radians
seeing = seeing/60./60.*!pi/180. ; radians
diffraction = 1.22*wavelength/d ; radians
;delta_phi_P = 2.*!pi*l_P/wavelength ; radians
delta_phi_P_0 = l_P/d ; radians
;delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
;delta_phi_max = (1. + z)*delta_phi_0 ; radians
;delta_phi_dif = 2.*!pi*a_0*(l_P/wavelength)^alpha*(1. + (d/(0.16*L))^alpha) ; radians
;theta_0 = sqrt(2.*!pi*l_P/d) ; radians
theta_dif = sqrt(2.*!pi*(1. + z)*l_P*(L/l_P)^(1. - alpha)/d) ; radians
wavelength_GZK = 2.*!pi*c*h_bar/(energy_GZK*eV) ; meters
wavelength_10keV = 2.*!pi*c*h_bar/(10.e3*eV) ; meters
wavelength_100keV = 2.*!pi*c*h_bar/(100.e3*eV) ; meters
wavelength_1MeV = 2.*!pi*c*h_bar/(1.e6*eV) ; meters
wavelength_5MeV = 2.*!pi*c*h_bar/(5.e6*eV) ; meters
wavelength_10MeV = 2.*!pi*c*h_bar/(10.e6*eV) ; meters
wavelength_1GeV = 2.*!pi*c*h_bar/(1.e9*eV) ; meters
wavelength_3GeV = 2.*!pi*c*h_bar/(3.e9*eV) ; meters
wavelength_5GeV = 2.*!pi*c*h_bar/(5.e9*eV) ; meters
wavelength_10GeV = 2.*!pi*c*h_bar/(10.e9*eV) ; meters
wavelength_100GeV = 2.*!pi*c*h_bar/(100.e9*eV) ; meters
wavelength_20TeV = 2.*!pi*c*h_bar/(20.e12*eV) ; meters
wavelength_250TeV = 2.*!pi*c*h_bar/(250.e12*eV) ; meters
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
wavelength_0 = l_P*(exp(1./A) - A*(exp(1./A)/A - exp(1./A))) ; metres
rp = theta ; radians
f = 2.+A-A*alog(rp*wavelength_10GeV^(rho+1.)/(2.*!pi*l_P)) ; dimensionless
energy_1 = c*h_bar/((1.+z)*a_0*l_P^alpha*L^(1.-alpha))/eV/1.e6
; report results for fixed redshift
print, 'z=', z
print, 'diameter of a 10-second burst region (pc)', 2.*10.*c/conversion*1.e6
print, 'diameter of a 10-second burst region (arcsec)', 2.*10.*c*S*180./!pi*60.*60.
print, '200 pc =', 0.2*0.001*conversion*S, ' radians',  0.2*0.001*conversion*S*180./!pi*60.*60., ' arcsec'
print, 'Ap, A:', Ap, A
print, 'Ratio maximum blurring for comoving over luminosity distance:', (1./(1.+z))^(1.-alpha)
print, 'Energy for maximum blurring to cross 1 radian (MeV):', energy_1
print, 'wavelength_0 (m):', wavelength_0
print, 'Energy-dependent slope and scaling factor:', rho, rp
print, 'Lambda and resolution at 10 GeV (m, radians):', wavelength_10GeV, rp*1.22*wavelength_10GeV^rho
print, 'Factor at 10 GeV and redshift z:', f

; and for specific intrument wavelength ranges

; TeV
energy_TeV_low = 100.e19 ; 2.*energy_GZK ; electron volts
energy_TeV_high = 100.e9 ; electron volts
resolution_TeV_low = 2.*60.*60./angle ; 0.05*60.*60./angle ; radians
resolution_TeV_high = 2.*60.*60./angle ; 0.1*60.*60./angle ; radians
wavelength_TeV_low = 2.*!pi*c*h_bar/(energy_TeV_low*eV) ; metres
wavelength_TeV_high = 2.*!pi*c*h_bar/(energy_TeV_high*eV) ; metres
energy_TeV = 700.e9 ; electron volts
wavelength_TeV = 2.*!pi*c*h_bar/(energy_TeV*eV) ; metres
resolution_TeV = 0.005 ; radians

; Fermi

; LAT (Large Area Telescope)
horizon_LAT = horizon_LAT*!pi/180. ; radians
wavelength_LAT_low = 1.24856e-17 ; 2.e-17 ; metres
wavelength_LAT_high = 0.9e-14 ; 5.e-14 ; 4.e-14 ; 0.9e-14 ; metres
resolution_LAT_low = 0.0001 ; 0.000125 ; 0.00015 ; 0.00025 ; 0.00072 ; 0.025*60.*60./angle ; 0.05*60.*60./angle ; radians
resolution_LAT_high = 5.*60.*60./angle ; 0.052 ; 1.5*60.*60./angle ; 5.*60.*60./angle ; radians
energy_LAT_low = 2.*!pi*c*h_bar/(wavelength_LAT_low*eV) ; electron volts
energy_LAT_high = 2.*!pi*c*h_bar/(wavelength_LAT_high*eV) ; electron volts
rp = resolution_LAT_low/wavelength_LAT_low^rho
;rho = alog(resolution_LAT_high/resolution_LAT_low)/alog(wavelength_LAT_high/wavelength_LAT_low) ; dimensionless
print, 'Low and high LAT energies (GeV, MeV):', energy_LAT_low/1.e9, energy_LAT_high/1.e6

; LAT PSF model
LAT_psf_scaling = 0.00168054 ; 0.001 ; 0.004 ; 0.005 ; 0.01
c_0 = 3.5 ; degrees
c_1 = 0.15 ; degrees
energy = 2.*!pi*c*h_bar/(wavelength*eV) ; eV
rho_LAT =  0.8
LAT_psf = sqrt((c_0*((energy/1.e6)/100.)^(-1.*rho_LAT))^2. + c_1^2.)
print, 'Best LAT angle at minimum wavelength (radians): ', min(LAT_psf(where(wavelength ge wavelength_LAT_low)))

; GBM (Gamma-ray Burst Monitor)
horizon_GBM = horizon_GBM*!pi/180. ; radians
wavelength_GBM_low = 1.5e-16 ; 0.8e-15 ; 1.e-15 ; 1.e-14 ; 4.e-14 ; metres
wavelength_GBM_high = 1.25e-10 ; 1.e-9 ; metres
resolution_GBM_low = 0.0009 ; limit_GBM/60./60.*180./!pi ; 1./60./60.*180./!pi ; radians

; Swift
; BAT (Burst Alert Telescope)
resolution_BAT_low = 0.00012 ; 60./angle ; radians
resolution_BAT_high =  0.0015 ; 30.*60.*60./angle ; radians
wavelength_BAT_low = 1.5e-12 ; 1.2e-12 ; metres
wavelength_BAT_high = 8.e-11 ; metres
; XRT (X-Ray Telescope)
resolution_XRT_low = 3./angle ; radians
resolution_XRT_high =  24.*60./angle ; radians
wavelength_XRT_low = 8.e-11 ; 6.e-9 ; metres
wavelength_XRT_high = 1.e-9 ; metres
; UVOT (Ultra-Violet Optical Telescope)
resolution_UVOT_low = 1./angle ; radians
resolution_UVOT_high =  10.*60./angle ; radians
wavelength_UVOT_low = 0.5e-9 ; metres
wavelength_UVOT_high = 1.e-8 ; metres

; Other
; Carpet-2 air shower observatory
resolution_Carpet2 = 0.03 ; radians
wavelength_Carpet2 = 0.7e-20 ; metres
; LHAASO, (Large High Altitude Air Shower Observatory)
resolution_LHAASO = 4. ; radians
wavelength_LHAASO = 1.e-19 ; metres
; Konus-Wind
resolution_KW = 0.5 ; radians
wavelength_KW = 0.7e-12 ; metres
; IXPE
resolution_IXPE = 0.0008 ; radians
wavelength_IXPE = 0.95e-10 ; metres
; MAXI, Monitor of All-sky X-ray Image onboard the International Space Station (ISS)
resolution_MAXI = 0.0008 ; radians
wavelength_MAXI = 0.95e-10 ; metres
; NICER, Neutron Star Interior Composition Explorer Mission
resolution_NICER = 0.0008 ; radians
wavelength_NICER = 1.2e-10 ; metres
; ART-XC
resolution_ARTXC = 0.002 ; radians
wavelength_ARTXC = 0.4e-10 ; metres

; HST
resolution_HST_low = 0.1/angle ; radians
resolution_HST_high =  5.*60./angle ; radians
wavelength_HST_low = 0.5e-6 ; metres
wavelength_HST_high = 2.e-6 ; metres
; JWST
resolution_JWST_low = 0.01/angle ; radians
resolution_JWST_high =  5.*60./angle ; radians
wavelength_JWST_low = 0.9e-6 ; metres
wavelength_JWST_high = 5.e-6 ; metres
; Ground
resolution_ground_low = 0.8/angle ; radians
resolution_ground_high =  5.*60./angle ; radians
wavelength_ground_low = 0.6e-6 ; metres
wavelength_ground_high = 2.e-6 ; metres
;wavelength_ground_mean = (wavelength_ground_low + wavelength_ground_high)/2. ; metres
wavelength_ground_mean = 0.8e-6 ; metres

; instead, calculate for both a wavelength and redshift range
redshift = 10.*findgen(samples)/float(samples)
distance = 0.001*(c/(q_0^2.*H_0))*(q_0*redshift - (1. - q_0)*(sqrt(1.+2.*q_0*redshift) - 1.)) ; Mpc, luminosity distance
distance = double(conversion*distance) ; metres, luminosity distance
scale = ((1.+redshift)^2.)/distance ; angular distance scale, radians per metre
if comoving eq 'yes' then distance = distance/(1.+redshift) ; metres, co-moving distance
amplitude = 1./alog(a_0*(1. + redshift)*(distance/l_P)^(1. - alpha))
;factor = 2. + amplitude - amplitude*alog(rp*wavelength_10GeV^(rho+1.)/(2.*!pi*l_P))
;factor = 2. + amplitude - amplitude*alog(rp*wavelength_LAT_low^(rho+1.)/(2.*!pi*l_P))
factor = 2. + amplitude - amplitude*alog(rp*wavelength_100GeV^(rho+1.)/(2.*!pi*l_P))
factor(0) = 1.
;print, amplitude
;print, factor
amplitude = mean(amplitude)
factor = mean(factor)
;print, 'Mean amplitude A and factor f at 10 GeV, given the input redshift range: ', amplitude, factor
print, 'Mean amplitude A and factor f at 100 GeV, given the input redshift range: ', amplitude, factor
;wavelength_rho = min(wavelength(where(rp*wavelength^rho gt delta_phi_max)))

; re-calculate
z = z_high ; z_high ; z_max ; z_avg ; z_med ; z_min ; z_low
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
delta_phi_P = 2.*!pi*l_P/wavelength ; radians
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_resolution = resolution*(1. + A*(1. + alog((2.*!pi*l_P)/(resolution*wavelength)))) ; radians
phi_seeing = seeing*(1. + A*(1. + alog((2.*!pi*l_P)/(seeing*wavelength)))) ; radians
phi_top = phi_limit
wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
;oplot, wavelength, phi_limit, color=150, thick=2
;oplot, wavelength, phi_2pi, color=150, thick=2
;oplot, wavelength, phi_top, color=150, thick=2
;oplot, wavelength, phi_horizon, color=150, thick=2
;oplot, wavelength, phi_theta, color=150, thick=2
;oplot, wavelength, phi_resolution, color=150, thick=2
;oplot, wavelength, phi_seeing, color=150, thick=2

; read in data

; Swift
print, 'Swift'

; read in the total Swift dataset, as of 2012 catalog
;Results from heasarc_swiftgrb: Swift Gamma Ray Bursts Catalog
;Coordinate system:  Equatorial
;|name       |duration|bat_pos_err|bat_epeak|xrt_pos_err|uvot_pos_err|uvot_vv_mag|redshift|
readcol, 'data_Swift_2012_cut', format='A, F, F, F, F, F, F, F', SWIFT_name, SWIFT_duration, BAT_resolution, BAT_energy, XRT_resolution, UVOT_resolution, UVOT_mag, SWIFT_z, /silent
BAT_energy(where(BAT_energy eq 0.)) = !values.f_nan
BAT_resolution(where(BAT_resolution eq 0.)) = !values.f_nan
XRT_resolution(where(XRT_resolution eq 0.)) = !values.f_nan
UVOT_resolution(where(UVOT_resolution eq 0.)) = !values.f_nan
BAT_resolution = BAT_resolution/60.*!pi/180. ; radians
XRT_resolution = XRT_resolution/60./60.*!pi/180. ; radians
UVOT_resolution = UVOT_resolution/60./60.*!pi/180. ; radians

;; kludge: convert resolution to a sky localization
;BAT_resolution = 2.*BAT_resolution
;XRT_resolution = 2.*XRT_resolution
;UVOT_resolution = 2.*UVOT_resolution
;;BAT_resolution = 2.*!pi*BAT_resolution
;;XRT_resolution = 2.*!pi*XRT_resolution
;;UVOT_resolution = 2.*!pi*UVOT_resolution

; convert to wavelengths
BAT_energy_mean = mean(BAT_energy, /nan)
BAT_energy(where(~finite(BAT_energy))) = !values.f_nan ; BAT_energy_mean
BAT_wavelength = 2.*!pi*c*h_bar/(BAT_energy*1.e3*eV) ; meters
; force to the mean input wavelengths
wavelength_XRT_mean = (wavelength_XRT_low + wavelength_XRT_high)/2.
wavelength_UVOT_mean = (wavelength_UVOT_low + wavelength_UVOT_high)/2.
XRT_wavelength = replicate(wavelength_XRT_mean, n_elements(SWIFT_name)) ; meters
randomized = 1. ; 1.-randomu(seed, n_elements(SWIFT_name))
UVOT_wavelength = randomized*replicate(wavelength_UVOT_mean, n_elements(SWIFT_name)) ; meters

; find averages
BAT_wavelength_mean = mean(BAT_wavelength, /nan)
XRT_wavelength_mean = mean(XRT_wavelength, /nan)
UVOT_wavelength_mean = mean(UVOT_wavelength, /nan)
BAT_resolution_mean = mean(BAT_resolution, /nan)
XRT_resolution_mean = mean(XRT_resolution, /nan)
UVOT_resolution_mean = mean(UVOT_resolution, /nan)
BAT_resolution_mean_cutoff = mean(BAT_resolution(where(Swift_z ge z_cutoff)), /nan)
XRT_resolution_mean_cutoff = mean(XRT_resolution(where(Swift_z ge z_cutoff)), /nan)
UVOT_resolution_mean_cutoff = mean(UVOT_resolution(where(Swift_z ge z_cutoff)), /nan)
print, 'Mean resolutions, BAT, XRT, UVOT (radians):'
print, BAT_resolution_mean, XRT_resolution_mean, UVOT_resolution_mean
print, 'Mean resolutions targets z>', string(z_cutoff), 'BAT, XRT, UVOT (radians):'
print, BAT_resolution_mean_cutoff, XRT_resolution_mean_cutoff, UVOT_resolution_mean_cutoff

; and standard deviations
BAT_wavelength_stddev = stddev(BAT_wavelength, /nan)
XRT_wavelength_stddev = stddev(XRT_wavelength, /nan)
UVOT_wavelength_stddev = stddev(UVOT_wavelength, /nan)
BAT_resolution_stddev = stddev(BAT_resolution, /nan)
XRT_resolution_stddev = stddev(XRT_resolution, /nan)
UVOT_resolution_stddev = stddev(UVOT_resolution, /nan)

; set extrema from these data
;wavelength_BAT_low = min(BAT_wavelength, /nan)
;wavelength_BAT_high = max(BAT_wavelength, /nan)
resolution_BAT_low = min(BAT_resolution, /nan)
;resolution_BAT_high = max(BAT_resolution, /nan)
;wavelength_XRT_low = min(XRT_wavelength, /nan)
;wavelength_XRT_high = max(XRT_wavelength, /nan)
resolution_XRT_low = min(XRT_resolution, /nan)
resolution_XRT_high = max(XRT_resolution, /nan)
;wavelength_UVOT_low = min(UVOT_wavelength, /nan)
;wavelength_UVOT_high = max(UVOT_wavelength, /nan)
resolution_UVOT_low = min(UVOT_resolution, /nan)
resolution_UVOT_high = max(UVOT_resolution, /nan)

;; or, set the lower limits of resolution to be the means
;resolution_BAT_low = BAT_resolution_mean
;resolution_XRT_low = XRT_resolution_mean
;resolution_UVOT_low = UVOT_resolution_mean
;; or, at using the redshift-cutoff values
;resolution_BAT_low = BAT_resolution_mean_cutoff
;resolution_XRT_low = XRT_resolution_mean_cutoff
;resolution_UVOT_low = UVOT_resolution_mean_cutoff

; report the wavelength extrema, based on means
print, 'BAT wavelength range (m; low, high): ', wavelength_BAT_low, wavelength_BAT_high

; Fermi
print, 'Fermi'

; read in the LAT 2FGL roll-angle data, which is updated so taking the latest
;readcol, 'data_LAT_2FGL_roll_cut', format='A, F, F, F, F', LAT_latest_name, LAT_latest_redshift, LAT_latest_angle, LAT_latest_zenith, LAT_latest_energy, /silent ; all data
;readcol, 'data_LAT_latest_error_cut', format='A, F, F, F, F, F, F', LAT_latest_name, LAT_latest_error, LAT_latest_redshift, LAT_latest_angle, LAT_latest_zenith, LAT_latest_distance, LAT_latest_energy, /silent ; all data, including roll error and distance to closest identified source
;readcol, 'data_LAT_2FGL_roll_error_delay_cut', format='A, F, F, F, F, F, F, F', LAT_latest_name, LAT_latest_error, LAT_latest_redshift, LAT_latest_angle, LAT_latest_zenith, LAT_latest_distance, LAT_latest_delay, LAT_latest_energy, /silent ; all data, including roll error and distance to closest identified source, plus delay time
; taking the the latest, updated data
readcol, 'data_LAT_2_November_2022_cut', format='A, F, F, F, F, F, F, F', LAT_latest_name, LAT_latest_error, LAT_latest_redshift, LAT_latest_angle, LAT_latest_zenith, LAT_latest_distance, LAT_latest_energy, LAT_latest_delay, /silent ; all data, including roll error and distance to closest identified source, plus delay time, note the slight re-ordering
order = sort(LAT_latest_redshift)
LAT_latest_name = LAT_latest_name(order)
LAT_latest_error = LAT_latest_error(order)
LAT_latest_redshift = LAT_latest_redshift(order)
LAT_latest_angle = LAT_latest_angle(order)
LAT_latest_zenith = LAT_latest_zenith(order)
LAT_latest_distance = LAT_latest_distance(order)
LAT_latest_delay = LAT_latest_delay(order)
LAT_latest_energy = LAT_latest_energy(order)
LAT_latest_energy(where(LAT_latest_energy eq -670.00)) = !values.f_nan
;LAT_latest_error = abs(LAT_latest_zenith-LAT_latest_angle) ; degrees, a kludge to create it from the roll angle
LAT_latest_angle = LAT_latest_angle*!pi/180. ; radians
LAT_latest_zenith = LAT_latest_zenith*!pi/180. ; radians
LAT_latest_error = LAT_latest_error*!pi/180. ; radians
LAT_latest_distance = LAT_latest_distance*!pi/180. ; radians
LAT_latest_wavelength = 2.*!pi*c*h_bar/(LAT_latest_energy*1.e6*eV) ; meters
LAT_latest_angle_psf = sqrt((c_0*((LAT_latest_energy*1.e9/1.e6)/100.)^(-1.*rho_LAT))^2. + c_1^2.) ; radians, from a model
LAT_latest_resolution = LAT_latest_error ; kludge, setting it to be the roll error
;LAT_latest_resolution = LAT_latest_distance ; kludge, setting it to be the roll distance
LAT_latest_resolution_psf = rp*LAT_latest_wavelength^rho ; radians, from a model
;LAT_latest_resolution_psf = 0.004*sqrt((c_0*((LAT_latest_energy*1.e9/1.e6)/100.)^(-1.*rho_LAT))^2. + c_1^2.) ; radians, from a model

; report mean time delay
print, 'Mean LAT 2FGL time delay (s): ', mean(LAT_latest_delay, /nan)

; choose either the zenith angle, or the smaller/larger or middle of the roll or zenith angle as the roll angle
; first, capturing the differences between roll angle and zenith angle
LAT_latest_angle_low = LAT_latest_angle
LAT_latest_angle_low(where(LAT_latest_zenith lt LAT_latest_angle)) = LAT_latest_zenith(where(LAT_latest_zenith lt LAT_latest_angle))
LAT_latest_angle_high = LAT_latest_angle
LAT_latest_angle_high(where(LAT_latest_zenith gt LAT_latest_angle)) = LAT_latest_zenith(where(LAT_latest_zenith gt LAT_latest_angle))
LAT_latest_angle_middle = (LAT_latest_zenith + LAT_latest_angle)/2.
;LAT_latest_angle_low = abs(LAT_latest_angle_middle-LAT_latest_angle_low)
;LAT_latest_angle_high = abs(LAT_latest_angle_middle-LAT_latest_angle_high)
LAT_latest_limit = LAT_latest_angle_high ; preserving the highest angle as the limiting case
;LAT_latest_limit = LAT_latest_zenith ; preserving the zenith angle as the limiting case
;LAT_latest_limit = LAT_latest_angle ; preserving the roll angle as the limiting case
;LAT_latest_limit = LAT_latest_angle_low ; preserving the lowest angle as the limiting case
; now, resetting what is called the "roll angle" to be either of those, or the median
if angles_LAT eq 'zenith' then LAT_latest_angle = LAT_latest_zenith
if angles_LAT eq 'smaller' then LAT_latest_angle(where(LAT_latest_zenith lt LAT_latest_angle)) = LAT_latest_zenith(where(LAT_latest_zenith lt LAT_latest_angle))
if angles_LAT eq 'larger' then LAT_latest_angle(where(LAT_latest_zenith gt LAT_latest_angle)) = LAT_latest_zenith(where(LAT_latest_zenith gt LAT_latest_angle))
if angles_LAT eq 'middle' then LAT_latest_angle = (LAT_latest_zenith + LAT_latest_angle)/2.

; report on LAT outlier points, and omit if desired
print, 'Outlier: ', outlier_name
outlier_angle = 0.1 ; 0.06 ; 0.1 ; radians, chosen to pick out those with better localization than possible
print, 'LAT outlier angle (radian, deg, arcmin): ', outlier_angle, outlier_angle*180./!pi, 60.*outlier_angle*180./!pi 
outlier = LAT_latest_name(where(LAT_latest_angle lt outlier_angle))
print, 'LAT outlier(s): ', outlier
;Results from heasarc_fermilgrb: Fermi LAT Second Gamma-Ray Burst Catalog
;Coordinate system:  Equatorial                                        (Deg)                 (Deg)          (Deg)               (MeV)
;|name        |gcn_name  |time                   |ra        |dec      |error_radius|redshift|theta |zenith |distance_to_closest|ext_emission_max_ene|
;|GRB110731465|GRB110731A|2011-07-31 11:09:29.002|18 41 40.8|-28 39 00|      0.2400| 2.83000|2.8752|50.7296|             4.2900|             3500.00|
; Position: 18:41:40.8 -28:39:00
; This source was well-studied; see Basha et al. (2013), which puts the roll angle at 6 degrees not 2.8752 deg: the position is likely from UVOT, and it has a Gemini spectrum.
outlier = where(LAT_latest_angle lt outlier_angle)
; reset the roll angle for it to be 6 degrees
;LAT_latest_angle(outlier) = 6.*!pi/180. ; radians
; or, if simply omitted
if omit_LAT eq 'yes' then begin
 LAT_latest_redshift(outlier) = !values.f_nan
 LAT_latest_wavelength(outlier) = !values.f_nan
 LAT_latest_angle(outlier) = !values.f_nan
 LAT_latest_resolution(outlier) = !values.f_nan
 LAT_latest_error(outlier) = !values.f_nan
 LAT_latest_distance(outlier) = !values.f_nan
 LAT_latest_limit(outlier) = !values.f_nan
endif
; and any named outlier
print, 'Outlier: ', outlier_name
outlier = where(LAT_latest_name eq outlier_name)
if omit_LAT eq 'yes' then begin
 LAT_latest_redshift(outlier) = !values.f_nan
 LAT_latest_wavelength(outlier) = !values.f_nan
 LAT_latest_angle(outlier) = !values.f_nan
 LAT_latest_resolution(outlier) = !values.f_nan
 LAT_latest_error(outlier) = !values.f_nan
 LAT_latest_distance(outlier) = !values.f_nan
 LAT_latest_limit(outlier) = !values.f_nan
endif
; and by cutoff date
cutoff = where(2000.+float(strmid(LAT_latest_name, 3, 2)) ge float(cutoff_date)) ; generates indices of sources with a detection year before cutoff
print, LAT_latest_name(cutoff)
LAT_latest_name(cutoff) = 'crap'
LAT_latest_redshift(cutoff) = !values.f_nan
LAT_latest_energy(cutoff) = !values.f_nan
LAT_latest_wavelength(cutoff) = !values.f_nan
LAT_latest_angle(cutoff) = !values.f_nan
LAT_latest_angle_psf(cutoff) = !values.f_nan
LAT_latest_zenith(cutoff) = !values.f_nan
LAT_latest_resolution(cutoff) = !values.f_nan
LAT_latest_error(cutoff) = !values.f_nan
LAT_latest_distance(cutoff) = !values.f_nan
LAT_latest_delay(cutoff) = !values.f_nan
LAT_latest_limit(cutoff) = !values.f_nan

; find locus of average points
LAT_latest_wavelength_mean = mean(LAT_latest_wavelength, /nan)
LAT_latest_wavelength_stddev = stddev(LAT_latest_wavelength, /nan)
LAT_latest_angle_mean = mean(LAT_latest_angle, /nan)
LAT_latest_angle_stddev = stddev(LAT_latest_angle, /nan)

; read in the LAT 10-year point-source data, with positional accuracies and pivot energy as in fourth data catalog release (2018)
readcol, 'data_LAT_10yr_all_cut', format='A, F, F, F, A', LAT_10yr_name_all, LAT_10yr_res_68_major_all, LAT_10yr_res_95_major_all, LAT_10yr_energy_all, LAT_10yr_type_all, /silent ; all data
LAT_10yr_res_68_all = LAT_10yr_res_68_major_all*!pi/180. ; radians
LAT_10yr_res_95_all = LAT_10yr_res_95_major_all*!pi/180. ; radians
LAT_10yr_wavelength_all = 2.*!pi*c*h_bar/(LAT_10yr_energy_all*1.e6*eV) ; meters

; the same, but restricted to those with associations
readcol, 'data_LAT_10yr_cut', format='A, A, F, F, F, F, F, A, F', LAT_10yr_name, LAT_10yr_assoc, LAT_10yr_res_68_major, LAT_10yr_res_68_minor, LAT_10yr_res_95_major, LAT_10yr_res_95_minor, LAT_10yr_energy, LAT_10yr_type, LAT_10yr_angle, /silent
LAT_10yr_res_68 = LAT_10yr_res_68_major*!pi/180. ; radians
LAT_10yr_res_95 = LAT_10yr_res_95_major*!pi/180. ; radians
;LAT_10yr_res_68 = LAT_10yr_res_68_minor*!pi/180. ; radians
;LAT_10yr_res_95 = LAT_10yr_res_95_minor*!pi/180. ; radians
LAT_10yr_wavelength = 2.*!pi*c*h_bar/(LAT_10yr_energy*1.e6*eV) ; meters
LAT_10yr_angle = LAT_10yr_angle*!pi/180. ; radians
LAT_10yr_redshift = replicate(!values.f_nan, n_elements(LAT_10yr_name)) ; fltarr(n_elements(LAT_10yr_name))

;; correct the resolution data to match previous estimates, which were about 50% worse
;LAT_10yr_res_68_all = 1.5*LAT_10yr_res_68_all
;LAT_10yr_res_95_all = 1.5*LAT_10yr_res_95_all

; now use NED to find redshifts for the associations in the PKS catalog
readcol, 'data_LAT_10yr_assoc_PKS_redshift', format='A, F', LAT_10yr_assoc_PKS, LAT_10yr_assoc_PKS_redshift, /silent
for i = 0, n_elements(LAT_10yr_name)-1 do begin
; print, LAT_10yr_assoc(i) ; write out to the screen
; if strmid(LAT_10yr_assoc(i), 0, 3) eq 'PKS' then begin
;  print, LAT_10yr_assoc(i) ; just the PKS ones, which NED readily identifies, and can be done separately in a batch search
; endif
 for j = 0, n_elements(LAT_10yr_assoc_PKS)-1 do begin ; now, read back in those for which NED reported a redshift
  if LAT_10yr_assoc(i) eq LAT_10yr_assoc_PKS(j) then begin
   LAT_10yr_redshift(i) = LAT_10yr_assoc_PKS_redshift(j)
;   print, LAT_10yr_name(i), ' ', LAT_10yr_assoc(i), LAT_10yr_redshift(i) ; report these back, as a check
  endif
 endfor
endfor
;print, min(LAT_10yr_redshift, /nan), max(LAT_10yr_redshift, /nan), median(LAT_10yr_redshift), mean(LAT_10yr_redshift, /nan)

; report numbers:
print, 'Total sample of LAT AGN 10-year pointsourcess: ', n_elements(LAT_10yr_angle)
print, 'Those with redshifts: ', n_elements(LAT_10yr_redshift(where(LAT_10yr_redshift gt 0.)))

; averaged redshifts
z_min = min(LAT_10yr_redshift(where(LAT_10yr_redshift gt 0.)))
z_max = max(LAT_10yr_redshift(where(LAT_10yr_redshift gt 0.)))
z_med = median(LAT_10yr_redshift(where(LAT_10yr_redshift gt 0.)))
z_avg = mean(LAT_10yr_redshift(where(LAT_10yr_redshift gt 0.)), /nan)
print, 'Min, max, median and mean redshift of LAT 10 year point-source sample: ', z_min, z_max, z_med, z_avg

; rename the pointsource data, for consistency with later labels
LAT_pointsource = LAT_10yr_res_95
LAT_pointsource_wavelength = LAT_10yr_wavelength

; rescaling by the horizon angle at that energy
LAT_pointsource_rescaled = LAT_pointsource ; just recapturing the original data, to test no rescaling
if rescale_LAT eq 'yes' then LAT_pointsource_rescaled = LAT_pointsource_rescaled/LAT_psf_scaling

; read in the GBM data, the latest
;readcol, 'data_GBM_15_June_2020_cut', format='A, F, F', GBM_latest_name, GBM_latest_energy, GBM_latest_radius, /silent
;print, 'GBM sources as of 15 June 2020: ', n_elements(GBM_latest_name)
;readcol, 'data_GBM_15_December_2020_cut', format='A, F, F, F, F, F', GBM_latest_name, GBM_latest_delay, GBM_latest_flnc_band_epeak, GBM_latest_radius, GBM_latest_pflx_comp_epeak, GBM_latest_pflx_band_epeak, GBM_latest_flnc_comp_epeak, /silent
;readcol, 'data_GBM_24_November_2021_cut', format='A, F, F, F, F, F', GBM_latest_name, GBM_latest_delay, GBM_latest_flnc_band_epeak, GBM_latest_radius, GBM_latest_pflx_comp_epeak, GBM_latest_pflx_band_epeak, GBM_latest_flnc_comp_epeak, /silent
readcol, 'data_GBM_31_October_2022_cut', format='A, F, F, F, F, F', GBM_latest_name, GBM_latest_delay, GBM_latest_flnc_band_epeak, GBM_latest_radius, GBM_latest_pflx_comp_epeak, GBM_latest_pflx_band_epeak, GBM_latest_flnc_comp_epeak, /silent

;; remove all data below the floor, that is, must be from identification at UV or optical wavelengths
;GBM_latest_name(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;GBM_latest_delay(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;GBM_latest_flnc_band_epeak(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;;GBM_latest_radius(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;GBM_latest_pflx_comp_epeak(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;GBM_latest_pflx_band_epeak(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;GBM_latest_flnc_comp_epeak(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan
;GBM_latest_radius(where(GBM_latest_radius lt floor_GBM)) = !values.f_nan

; hold onto the variation from average of energies
GBM_latest_energy_average = (GBM_latest_flnc_band_epeak + GBM_latest_pflx_comp_epeak + GBM_latest_pflx_band_epeak + GBM_latest_flnc_comp_epeak)/4. ; keV, average of all four
GBM_latest_energy_highest = max([GBM_latest_flnc_band_epeak, GBM_latest_pflx_comp_epeak, GBM_latest_pflx_band_epeak, GBM_latest_flnc_comp_epeak]) ; keV, highest of all four

; choose the energy to use in plots
GBM_latest_energy = GBM_latest_flnc_band_epeak ; keV ; capturing the variable correctly
if energies_GBM eq 'peak' then GBM_latest_energy = GBM_latest_flnc_band_epeak ; keV
;GBM_latest_energy = GBM_latest_pflx_comp_epeak ; keV
;GBM_latest_energy = GBM_latest_pflx_band_epeak ; keV
;GBM_latest_energy = GBM_latest_flnc_comp_epeak ; keV
;GBM_latest_energy = (GBM_latest_flnc_band_epeak + GBM_latest_flnc_comp_epeak)/2. ; keV
;GBM_latest_energy = (GBM_latest_pflx_band_epeak + GBM_latest_flnc_band_epeak)/2. ; keV
if energies_GBM eq 'average' then GBM_latest_energy = (GBM_latest_flnc_band_epeak + GBM_latest_pflx_comp_epeak + GBM_latest_pflx_band_epeak + GBM_latest_flnc_comp_epeak)/4. ; keV, average of all four
if energies_GBM eq 'median' then begin
 for i = 0, n_elements(GBM_latest_name) - 1 do begin
  GBM_latest_energy(i) = median([GBM_latest_flnc_band_epeak(i), GBM_latest_pflx_comp_epeak(i), GBM_latest_pflx_band_epeak(i), GBM_latest_flnc_comp_epeak(i)]) ; keV, median instead
 endfor
endif
print, 'GBM sources as of latest: ', n_elements(GBM_latest_name)
GBM_latest_radius = GBM_latest_radius*!pi/180. ; radians
GBM_latest_wavelength = 2.*!pi*c*h_bar/(GBM_latest_energy*1000.*eV) ; meters
GBM_latest_wavelength_average = 2.*!pi*c*h_bar/(GBM_latest_energy_average*1000.*eV) ; meters
GBM_latest_wavelength_lowest = 2.*!pi*c*h_bar/(GBM_latest_energy_highest*1000.*eV) ; meter

; list the names of important, identified GRB events
;important = ['GRB090510016', 'GRB1207111155', 'GRB160623209', 'GRB090902462', 'GRB130427324', 'GRB080916009']
; or find them, by selection via wavelength or redshift cut
;important = LAT_latest_name(where(LAT_latest_wavelength le wavelength_10GeV))
important = LAT_latest_name(where(LAT_latest_wavelength le wavelength_10GeV and LAT_latest_redshift ge z_cutoff))
;important = LAT_latest_name(where(LAT_latest_wavelength le 1.5*wavelength_10GeV and LAT_latest_redshift ge z_cutoff))
print, 'Important sources: ', important

; correlate the GBM latest and LAT 10-year, 2FGL catalogs
error_limit = mean(GBM_latest_radius, /nan)/mean(LAT_latest_error, /nan)
;error_limit = mean(GBM_latest_radius, /nan)/mean(LAT_latest_distance, /nan)
;error_limit = 1. ; 12.7 ; 60. ; a straight ratio between the GBM and LAT resolution limits
GBM_latest_redshift = fltarr(n_elements(GBM_latest_name)) ; all zero to start
;GBM_latest_redshift = replicate(!values.f_nan, n_elements(GBM_latest_name))
GBM_latest_distance = GBM_latest_redshift
GBM_latest_distance_low = GBM_latest_distance
GBM_latest_distance_high = GBM_latest_distance
for i = 0, n_elements(GBM_latest_name) - 1 do begin
 for j = 0, n_elements(LAT_latest_name) - 1 do begin
  if GBM_latest_name(i) eq LAT_latest_name(j) then begin
   GBM_latest_redshift(i) = LAT_latest_redshift(j)
;   GBM_latest_radius(i) = LAT_latest_error(j) ; radians, resetting the GBM "resolution" of the GRB identification to be the LAT catalog error angle
;   GBM_latest_radius(i) = LAT_latest_distance(j) ; radians, resetting the GBM "resolution" of the GRB identification to be the LAT catalog error angle
;   GBM_latest_distance(i) = LAT_latest_angle(j) ; radians, the GBM distance set as above, from the roll angle
   GBM_latest_distance(i) = LAT_latest_distance(j) ; radians, the GBM distance set as above, from the nearest-associated distance
;   GBM_latest_distance(i) = max([GBM_latest_radius(i), LAT_latest_distance(j)]) ; radians, whichever is higher
;   GBM_latest_distance(i) = error_limit*LAT_latest_error(j) ; radians, the GBM distance set as above
;   GBM_latest_distance(i) = max([error_limit*LAT_latest_error(j), LAT_latest_distance(j)]) ; radians, taking the maximum of the two
;   GBM_latest_distance(i) = (error_limit*LAT_latest_error(j) + LAT_latest_distance(j))/2. ; radians, the formal average of the two
;   GBM_latest_distance_low(i) = 0. ; min([error_limit*LAT_latest_error(j), LAT_latest_distance(j)]) ; radians
;   GBM_latest_distance_high(i) = 0. ; max([error_limit*LAT_latest_error(j), LAT_latest_distance(j)]) ; radians
   GBM_latest_distance_low(i) = min([error_limit*LAT_latest_error(j), LAT_latest_distance(j)]) ; radians
   GBM_latest_distance_high(i) = max(2.*[error_limit*LAT_latest_error(j), LAT_latest_distance(j)]) ; radians
;   print, GBM_latest_name(i), GBM_latest_redshift(i), GBM_latest_wavelength(i), GBM_latest_radius(i), GBM_latest_distance(i)
  endif
 endfor
endfor
; sort by redshift
order = sort(GBM_latest_redshift)
GBM_latest_name = GBM_latest_name(order)
GBM_latest_redshift = GBM_latest_redshift(order)
GBM_latest_energy = GBM_latest_energy(order)
GBM_latest_energy_average = GBM_latest_energy_average(order)
GBM_latest_radius = GBM_latest_radius(order)
GBM_latest_wavelength = GBM_latest_wavelength(order)
GBM_latest_wavelength_average = GBM_latest_wavelength_average(order)
GBM_latest_wavelength_lowest = GBM_latest_wavelength_lowest(order)
GBM_latest_distance = GBM_latest_distance(order)
GBM_latest_distance_low =  GBM_latest_distance_low(order)
GBM_latest_distance_high = GBM_latest_distance_high(order)

; find outlier points, at too high an energy to be found with GBM
outlier_wavelength = 1.e-13 ; meters
outlier = GBM_latest_name(where(GBM_latest_wavelength lt outlier_wavelength))
print, 'GBM outlier(s) :', outlier
outlier = where(GBM_latest_wavelength lt outlier_wavelength)
; if omitted
if omit_GBM eq 'yes' then begin
 GBM_latest_redshift(outlier) = !values.f_nan
 GBM_latest_wavelength(outlier) = !values.f_nan
 GBM_latest_wavelength_average(outlier) = !values.f_nan 
 GBM_latest_wavelength_lowest(outlieer) = !values.f_nan
 GBM_latest_radius(outlier) = !values.f_nan
 GBM_latest_distance(outlier) = !values.f_nan
 GBM_latest_distance_low(outlier) = !values.f_nan
 GBM_latest_distance_high(outlier) = !values.f_nan
endif
;; and any named outlier
;print, 'Outlier: ', outlier_name
;outlier = where(GBM_latest_name eq outlier_name)
;if omit eq 'yes' then begin
; GBM_latest_redshift(outlier) = !values.f_nan
; GBM_latest_wavelength(outlier) = !values.f_nan
; GBM_latest_wavelength_average(outlier) = !values.f_nan
; GBM_latest_wavelength_lowest(outlier) = !values.f_nan
; GBM_latest_radius(outlier) = !values.f_nan
; GBM_latest_distance(outlier) = !values.f_nan
; GBM_latest_distance_low(outlier) = !values.f_nan
; GBM_latest_distance_high(outlier) = !values.f_nan
;endif
;; and by date
;cutoff = where(2000.+float(strmid(GBM_latest_name, 3, 2)) ge float(cutoff_date)) ; generates indices of sources with a detection year before cutoff
;print, GBM_latest_name(cutoff)
;GBM_latest_name(cutoff) = 'poop' ; !values.f_nan
;GBM_latest_redshift(cutoff) = !values.f_nan
;GBM_latest_wavelength(cutoff) = !values.f_nan
;GBM_latest_wavelength_average(cutoff) = !values.f_nan
;GBM_latest_wavelength_lowest(cutoff) = !values.f_nan
;GBM_latest_radius(cutoff) = !values.f_nan
;GBM_latest_distance(cutoff) = !values.f_nan
;GBM_latest_distance_low(cutoff) = !values.f_nan
;GBM_latest_distance_high(cutoff) = !values.f_nan

; find locus of average points
GBM_latest_wavelength_mean = mean(GBM_latest_wavelength, /nan)
GBM_latest_wavelength_stddev = stddev(GBM_latest_wavelength, /nan)
GBM_latest_radius_mean = mean(GBM_latest_radius, /nan)
GBM_latest_radius_stddev = stddev(GBM_latest_radius, /nan)

; find the ratio of GBM peak to average
;GBM_ratio = GBM_latest_wavelength_average/GBM_latest_wavelength
GBM_ratio = GBM_latest_wavelength_average(where(GBM_latest_radius gt theta))/GBM_latest_wavelength(where(GBM_latest_radius gt theta)) ; restrict to greater than theta
GBM_ratio = GBM_ratio(where(GBM_ratio lt 1.)) ; restrict to less than unity
GBM_ratio_min = min(GBM_ratio(where(GBM_ratio gt 0.)), /nan)
GBM_ratio_max = max(GBM_ratio, /nan)
GBM_ratio_mean = mean(GBM_ratio, /nan)
;GBM_ratio_median = median(GBM_ratio)
print, 'GBM median ratio wavelength to peak shift (min): ', GBM_ratio_min ;, GBM_ratio_median

; read in any additional, incremental edition
;GRB220101
;|name        |error_radius|redshift|theta   |zenith  |ext_emission_max_ene|t90     |flnc_band_epeak|error_radius|pflx_comp_epeak|pflx_band_epeak|flnc_comp_epeak|
;|GRB220101215|      0.4700| 4.61800| 17.0075| 15.6086|             1200.00| 128.259|               |      0.0006|               |               |               |
GBM_incremental_name = 'GRB220101215'
GBM_incremental_redshift = 4.61800
GBM_incremental_energy = 0. ; keV
GBM_incremental_wavelength = GBM_latest_wavelength_mean ; meters, a kludge, as there is no energy, so choosing the mean
GBM_incremental_resolution = 1. ; 0.0006 ; degrees
GBM_incremental_delay = 128.259 ; seconds
GBM_incremental_distance = 1. ; 0. ; degrees
GBM_incremental_distance_low =  1. ; 0. ; degrees
GBM_incremental_distance_high = 1. ; 0. ; degrees
LAT_incremental_name = GBM_incremental_name
LAT_incremental_redshift = GBM_incremental_redshift
LAT_incremental_delay = GBM_incremental_delay
LAT_incremental_energy = 1200.00 ; MeV
LAT_incremental_error = 0.4700 ; degrees
LAT_incremental_angle = 17.0075 ; degrees
LAT_incremental_zenith = 15.6086 ; degrees
LAT_incremental_distance = 0. ; degrees
LAT_incremental_resolution = LAT_incremental_error ; kludge, setting it to be the roll error
;LAT_incremental_resolution = LAT_incremental_distance ; kludge, setting it to be the roll distance
LAT_incremental_limit = LAT_incremental_zenith ; degrees
; convert
;GBM_incremental_wavelength =  2.*!pi*c*h_bar/(GBM_incremental_energy*1.e3*eV) ; meters
GBM_incremental_resolution = GBM_incremental_resolution*!pi/180. ; radians
GBM_incremental_distance = GBM_incremental_distance*!pi/180. ; radians
GBM_incremental_distance_low = GBM_incremental_distance_low*!pi/180. ; radians
GBM_incremental_distance_high = GBM_incremental_distance_high*!pi/180. ; radians
LAT_incremental_wavelength = 2.*!pi*c*h_bar/(LAT_incremental_energy*1.e6*eV) ; meters
LAT_incremental_error = LAT_incremental_error*!pi/180. ; radians
LAT_incremental_zenith = LAT_incremental_zenith*!pi/180. ; radians
LAT_incremental_angle = LAT_incremental_angle*!pi/180. ; radians
LAT_incremental_distance = LAT_incremental_distance*!pi/180. ; radians
LAT_incremental_limit = LAT_incremental_limit*!pi/180. ; radians
LAT_incremental_resolution = LAT_incremental_resolution*!pi/180. ; radians
LAT_incremental_resolution_psf = rp*LAT_incremental_wavelength^rho ; radians, from a model
LAT_incremental_resolution_psf = LAT_incremental_resolution_psf*!pi/180. ; radians
; add this to the latest GBM data
GBM_latest_name = [GBM_latest_name, GBM_incremental_name]
GBM_latest_delay = [GBM_latest_delay, GBM_incremental_delay]
GBM_latest_energy = [GBM_latest_energy, GBM_incremental_energy]
GBM_latest_redshift = [GBM_latest_redshift, GBM_incremental_redshift]
GBM_latest_radius = [GBM_latest_radius, GBM_incremental_resolution] ; a kludge, as there is only a resolution, not a radius per se
GBM_latest_wavelength = [GBM_latest_wavelength, GBM_incremental_wavelength]
GBM_latest_distance = [GBM_latest_distance, GBM_incremental_distance]
GBM_latest_distance_low = [GBM_latest_distance_low, GBM_incremental_distance_low]
GBM_latest_distance_high = [GBM_latest_distance_high, GBM_incremental_distance_high]
; and to the latest LAT 2FGL records
LAT_latest_name = [LAT_latest_name, LAT_incremental_name]
LAT_latest_error = [LAT_latest_error, LAT_incremental_error]
LAT_latest_redshift = [LAT_latest_redshift, LAT_incremental_redshift]
LAT_latest_angle = [LAT_latest_angle, LAT_incremental_angle]
LAT_latest_zenith = [LAT_latest_zenith, LAT_incremental_zenith]
LAT_latest_distance = [LAT_latest_distance, LAT_incremental_distance]
LAT_latest_limit = [LAT_latest_limit, LAT_incremental_limit]
LAT_latest_delay = [LAT_latest_delay, LAT_incremental_delay]
LAT_latest_energy = [LAT_latest_energy, LAT_incremental_energy]
LAT_latest_resolution = [LAT_latest_resolution, LAT_incremental_resolution]
LAT_latest_resolution_psf = [LAT_latest_resolution_psf, LAT_incremental_resolution_psf]
LAT_latest_wavelength = [LAT_latest_wavelength, LAT_incremental_wavelength]

; delete radii and distances below GBM limit or floor, so only allowing those within detection threshold, eliminating those derived from coincident observations
GBM_latest_radius_hold = GBM_latest_radius ; hold onto all the data
GBM_latest_distance_hold = GBM_latest_distance ; hold onto all the data
GBM_latest_wavelength_hold = GBM_latest_wavelength ; hold onto all the data
; below the floor, whatever else is done
;; GBM_latest_wavelength_hold(where(GBM_latest_radius_hold lt floor_GBM/60./60.*180./!pi)) = !values.f_nan
;; GBM_latest_distance_hold(where(GBM_latest_radius_hold lt floor_GBM/60./60.*180./!pi)) = !values.f_nan
;GBM_latest_radius_hold(where(GBM_latest_radius_hold lt floor_GBM/60./60.*180./!pi)) = !values.f_nan
if delete_GBM eq 'yes' then begin
; ; below the floor
;; GBM_latest_wavelength_hold(where(GBM_latest_radius_hold lt floor_GBM/60./60.*180./!pi)) = !values.f_nan
;; GBM_latest_distance_hold(where(GBM_latest_radius_hold lt floor_GBM/60./60.*180./!pi)) = !values.f_nan
; GBM_latest_radius_hold(where(GBM_latest_radius_hold lt floor_GBM/60./60.*180./!pi)) = !values.f_nan
 ; below the limit
; GBM_latest_wavelength(where(GBM_latest_radius_hold lt limit_GBM/60./60.*180./!pi)) = !values.f_nan
; GBM_latest_distance(where(GBM_latest_radius_hold lt limit_GBM/60./60.*180./!pi)) = !values.f_nan
 GBM_latest_radius(where(GBM_latest_radius_hold lt limit_GBM/60./60.*180./!pi)) = !values.f_nan
endif

; set extrema from these
wavelength_LAT_low = min(LAT_latest_wavelength, /nan)
wavelength_LAT_high = max(LAT_latest_wavelength, /nan)
;wavelength_GBM_low = min(GBM_latest_wavelength, /nan)
wavelength_GBM_high = max(GBM_latest_wavelength, /nan)
resolution_LAT_high = max(LAT_latest_angle, /nan)
;resolution_GBM_low = min(GBM_latest_radius, /nan)
resolution_GBM_high = max(GBM_latest_radius, /nan)
print, 'LAT wavelength range (m; low, high): ', wavelength_LAT_low, wavelength_LAT_high
print, 'GBM wavelength range (m; low, high): ', wavelength_GBM_low, wavelength_GBM_high
print, 'LAT resolution, highest (radians): ', resolution_LAT_high
print, 'GBM resolution range (radians; low, high): ', resolution_GBM_low, resolution_GBM_high

; and also, as the "horizons" in calculations
;horizon_LAT = resolution_LAT_high
;horizon_GBM = resolution_GBM_high

; read in a special datapoint
;GRB221009A
;Results from heasarc_fermigtrig: Fermi GBM Trigger Catalog
;Coordinate system:  Equatorial
;|name          |error_radius|theta   |phi      |
;|GRB221009553  |      0.0500| 62.1012| 258.1900|
;Results from heasarc_fermigbrst: Fermi GBM Burst Catalog
;Coordinate system:  Equatorial
;|name        |trigger_time           |t90     |flnc_band_epeak|error_radius|
;|GRB221009553|2022-10-09 13:16:59.988| 325.831|               |      0.0500|
;TITLE:   GCN CIRCULAR
;NUMBER:  32637
;SUBJECT: GRB 221009A or Swift J1913.1+1946: Fermi-LAT detection
;DATE:    22/10/09 21:45:05 GMT
;FROM:    Elisabetta Bissaldi at INFN,Bari  <elisabetta.bissaldi@ba.infn.it>
;TITLE:   GCN CIRCULAR
;NUMBER:  32748
;SUBJECT: GRB 221009A: a 397.7 GeV photon observed by Fermi-LAT at 0.4 day after the GBM trigger
;DATE:    22/10/14 01:09:54 GMT
;FROM:    Zi-Qing Xia at Purple Mountain Observatory  <xiazq@pmo.ac.cn>
;We find a 397.7 GeV photon at 0.27 degree from the LAT localization of GRB 221009A (RA = 288.282, Dec = 19.495, from Pillera et al. GCN #32658), arriving at 33554 seconds after the Fermi-GBM trigger. The location of this event is RA = 288.252, Dec = 19.763, which is close to the LHAASO localization of GRB 221009A (RA = 288.3, Dec = 19.7, from Huang et al. GCN #32677).
;LAT_energy = 397.7 ; 99.3 GeV ; 7.8 ; GeV
;LAT_radius = 0.27 ; 0.09 ; deg
;GBM_energy = 375 +/- 87 keV.
;GBM_radius = 47.3 ; 3.71 ; degrees
;redshift = 0.1505
special_name = 'GRB221009A'
ground_special_wavelength = wavelength_ground_mean
HST_special_wavelength = 0.65e-6 ; metres
JWST_special_wavelength = 1.6e-6 ; metres
BAT_special_wavelength = BAT_wavelength_mean
XRT_special_wavelength = XRT_wavelength_mean
UVOT_special_wavelength = UVOT_wavelength_mean
ground_special_resolution = 0.80 ; arcsec
HST_special_resolution = 0.1 ; arcsec
JWST_special_resolution = 0.08 ; arcsec
BAT_special_resolution = 2.4 ; arcmin
XRT_special_resolution = 3.5 ; arcsec
UVOT_special_resolution = 0.61 ; arcsec
IXPE_special_resolution = 3.4 ; 1.2*3.4 ; arcmin, perhaps a minimum, as the "core" is seen to be at least 20% larger than the expected PSF
IXPE_special_energy = 5. ; keV, midpoint of the sensitivity band
IXPE_resolution_error = 0.5*IXPE_special_resolution*!pi/180./60. ; radians; taken to be some something like half the resolution
MAXI_special_resolution = 5. ; 10. ; 5. ; arcmin, taken to be about half the projected size of the Galactic dust echoes
MAXI_special_energy = (0.3+10.0)/2. ; keV, midpoint of the sensitivity band
MAXI_resolution_error = 2.*0.5*MAXI_special_resolution*!pi/180./60. ; radians; taken to be some something like a half of the resolution, or equal
NICER_special_resolution = 5. ; 10. ; 5. ; arcmin, taken to be about half the projected size of the Galactic dust echoes
NICER_special_energy = (12.+15.)/2. ; keV, midpoint of the sensitivity band
NICER_resolution_error = 2.*0.5*NICER_special_resolution*!pi/180./60. ; radians; taken to be some something like a half of the resolution, or equal
LAT_special_energy = 99.3*1000. ; 7.8*1000. ; MeV
LAT_special_radius = 0.09 ; degrees
LAT_special_redshift = 0.1505
LAT_special_roll_angle = 62.1012 ; degrees
LAT_special_zenith_angle = 258.1900 ; degrees
LAT_special_delay = 240. ; seconds
LAT_special_limit = LAT_special_zenith_angle
GBM_special_energy = 375. ; keV
GBM_special_radius = 3.71 ; 47.3 ; 3.71 ; degrees
GBM_special_delay = 100. ; seconds
TeV_special_energy = 397.7/1000. ; TeV, highest energy photon from Fermi LAT
TeV_special_resolution = 0.27 ; degrees
TeV_special_delay = 325.831 ; seconds
KW_special_energy = 3038. ; +/-120 ; keV
KW_special_angle = 48.2 ; 132.8 ; 48.2 ; degrees ; this was seen outside the FoV of the detector, which has an opening angle of 132.8 degrees
ARTXC_special_energy = (4.+120.)/2. ; keV, the full range of the detectors, assuming peak in the middle
ARTXC_special_angle = 36. ; arcmin, this was seen outside of the FoV of the detector, which as an opening angle of 36 arcminutes
ARTXC_special_resolution = 2.*45./60. ; arcmin, it can resolve down to 45 arcsec
VHE_special_energy = 18. ; TeV ; this is the LHAASO detection, 
VHE_special_angle = 180. ; 180. ; 90. ; degrees: somewhat arbitrary, but that it was detected on the sky at all means this angle must be less than 180 degrees
VHE_special_delay = 2000. ; seconds, from TeVCat
Carpet2_special_energy = 251. ; TeV, Carpet-2 "photon-like" air-shower detection
Carpet2_special_angle = 4.7 ; (4.7-1.78)/2. ; degrees
Carpet2_special_resolution = 0.5*1.78 ; 1.78 ; degrees, from the GBM trigger location, although 90-% encircled energy resolution is 4.7 degrees, which is called an angle here (greater than Theta)

; convert
ground_special_resolution = ground_special_resolution*!pi/180./60./60. ; radians
HST_special_resolution = HST_special_resolution*!pi/180./60./60. ; radians
JWST_special_resolution = JWST_special_resolution*!pi/180./60./60. ; radians
BAT_special_resolution = BAT_special_resolution*!pi/180./60. ; radians
XRT_special_resolution = XRT_special_resolution*!pi/180./60./60. ; radians
UVOT_special_resolution = UVOT_special_resolution*!pi/180./60./60. ; radians
IXPE_special_resolution = IXPE_special_resolution*!pi/180./60. ; radians
IXPE_special_wavelength = 2.*!pi*c*h_bar/(IXPE_special_energy*1.e3*eV) ; meters
MAXI_special_resolution = MAXI_special_resolution*!pi/180./60. ; radians
MAXI_special_wavelength = 2.*!pi*c*h_bar/(MAXI_special_energy*1.e3*eV) ; meters
NICER_special_resolution = NICER_special_resolution*!pi/180./60. ; radians
NICER_special_wavelength = 2.*!pi*c*h_bar/(NICER_special_energy*1.e3*eV) ; meters
LAT_special_wavelength = 2.*!pi*c*h_bar/(LAT_special_energy*1.e6*eV) ; meters
LAT_special_radius = LAT_special_radius*!pi/180. ; radians
LAT_special_roll_angle = LAT_special_roll_angle*!pi/180. ; radians
LAT_special_limit = LAT_special_limit*!pi/180. ; radians
GBM_special_wavelength =  2.*!pi*c*h_bar/(GBM_special_energy*1.e3*eV) ; meters
GBM_special_wavelength_short = short_GBM*GBM_special_wavelength
GBM_special_radius = GBM_special_radius*!pi/180. ; radians
TeV_special_wavelength = 2.*!pi*c*h_bar/(TeV_special_energy*1.e12*eV) ; meters
TeV_special_resolution = TeV_special_resolution*!pi/180. ; radians
KW_special_wavelength = 2.*!pi*c*h_bar/(KW_special_energy*1.e3*eV) ; meters
KW_special_angle = KW_special_angle*!pi/180. ; radians
ARTXC_special_wavelength =  2.*!pi*c*h_bar/(ARTXC_special_energy*1.e3*eV) ; meters
ARTXC_special_angle = ARTXC_special_angle*!pi/180./60. ; radians
ARTXC_special_resolution = ARTXC_special_resolution*!pi/180./60. ; radians
VHE_special_wavelength =  2.*!pi*c*h_bar/(VHE_special_energy*1.e12*eV) ; meters
VHE_special_angle = VHE_special_angle*!pi/180. ; radians
Carpet2_special_wavelength = 2.*!pi*c*h_bar/(Carpet2_special_energy*1.e12*eV) ; meter
Carpet2_special_angle = Carpet2_special_angle*!pi/180. ; radians
Carpet2_special_resolution = Carpet2_special_resolution*!pi/180. ; radians
print, 'Special object name: ', special_name
BAT_special_energy = 2.*!pi*c*h_bar/(BAT_special_wavelength*1000.*eV) ; keV
print, 'Swift BAT energy (keV): ', BAT_special_energy
XRT_special_energy = 2.*!pi*c*h_bar/(XRT_special_wavelength*1000.*eV) ; keV
print, 'Swift XRT energy (keV): ', XRT_special_energy
print, 'Swift UVOT wavelength (nm): ', UVOT_special_wavelength*1.e9
print, 'Ground-based wavelength (nm): ', ground_special_wavelength*1.e9
print, 'HST wavelength (nm): ', HST_special_wavelength*1.e9
print, 'JWST wavelength (micron): ', JWST_special_wavelength*1.e6

; TeV
print, 'TeV'

; read in TeVCat data
rdfloat, 'data_TeV_fix', TeV_energy, TeV_z, TeV_resolution, /silent
TeV_wavelength = 2.*!pi*c*h_bar/(TeV_energy*1.e9*eV) ; meters
TeV_resolution(where(TeV_resolution eq 0.)) = !values.f_nan
TeV_resolution = 2.*TeV_resolution*!pi/180./60./60. ; radians

; find averages
TeV_wavelength_mean = median(TeV_wavelength) ; mean(TeV_wavelength, /nan) ; actually, the median
TeV_resolution_mean = mean(TeV_resolution, /nan)
TeV_resolution_mean_cut = mean(TeV_resolution(where(TeV_z ge z_cutoff)), /nan)
TeV_wavelength_stddev = stddev(TeV_wavelength, /nan)
TeV_resolution_stddev = stddev(TeV_resolution, /nan)
TeV_resolution_stddev_cut = stddev(TeV_resolution(where(TeV_z ge z_cutoff)), /nan)
print, 'Mean and std. dev. TeV wavelength', TeV_wavelength_mean, TeV_wavelength_stddev, ' m' 
print, 'Mean and std. dev. resolution, TeV (radians):'
print, TeV_resolution_mean, TeV_resolution_stddev
print, 'Mean and std. dev. resolution targets z>', strtrim(string(z_cutoff),1), ', TeV (radians):'
print, TeV_resolution_mean_cut, TeV_resolution_stddev_cut

;; read in TeGeV data
;rdfloat, 'data_TeGeV_fix', TeV_id, TeV_resolution, TeV_error, TeV_energy, TeV_z
;TeV_wavelength = 2.*!pi*c*h_bar/(TeV_energy*1.e9*eV) ; meters
;TeV_resolution(where(TeV_resolution eq 0.)) = !values.f_nan
;TeV_resolution = 2.*TeV_resolution*!pi/180./60./60. ; radians

; a test: create an outer angle estimate, simply rescaling resolution by the ratio of the horizon to resolution, i.e. fraction of photons scattered over sky
TeV_angle = TeV_resolution*horizon/resolution
TeV_angle = (2.*!pi/max(TeV_angle))*TeV_angle ; kludge: reduce by pi, as in this test the only interesting thing is whether the distribution is consistent not the scaling

; read in the TeVCat data, as of 15 June 2020
readcol, 'data_TeV_15_June_2020_cut', format='A, F, F', TeV_latest_name, TeV_latest_redshift, TeV_latest_size, /silent ; all data
TeV_latest_size = TeV_latest_size*!pi/180. ; radians
TeV_latest_energy = replicate(1000., n_elements(TeV_latest_name)) ; GeV, by catalog definition, all have this energy or higher
TeV_latest_wavelength = 2.*!pi*c*h_bar/(TeV_latest_energy*1.e9*eV) ; meters
TeV_latest_wavelength = replicate(TeV_wavelength_mean, n_elements(TeV_latest_name)) ; meters
TeV_latest_redshift(where(TeV_latest_redshift eq 0.)) = !values.f_nan

; determine the best resolution
;resolution_TeV_low = min(TeV_latest_size, /nan)
resolution_TeV_low = min(TeV_resolution, /nan)

; plot resolutions and blurring as a function of wavelength
;window, 2, xsize=900, ysize=900, title='Wavelength Dependence'
window, 2, xsize=x_display, ysize=y_display, title='Wavelength Dependence'
;if display eq "wide" then window, 2, xsize=900, ysize=900, title='Wavelength Dependence'
;if display eq "gamma" or display eq "xray" then window, 2, xsize=x_display, ysize=y_display, title='Wavelength Dependence'
wshow, 2
wset, 2
!p.background=255
loadct, 0, /silent
!p.multi=[0, 1, 1]
charsize=charsize_plot ; charsize_label
;charthick=2 ; 1 ; 2

; blurring
xtitle = 'Observed wavelength (m)' ; textoidl("\wavelength") + ' (m)'
ytitle = 'Angular scale or equivalent phase dispersion (radians)' ; textoidl("\Phi") + ' (radians)'
plot, wavelength, 0.*delta_phi_max, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, charthick=charthick, color=0

; start with aggregating data for a density plot
; Fermi
;; just LAT GRB catalog
;GRB_wavelength = [LAT_latest_wavelength]
;GRB_resolution = [LAT_latest_angle]
;; the LAT GRB catalog and TeV angles
;GRB_wavelength = [TeV_wavelength, LAT_latest_wavelength]
;GRB_resolution = [TeV_angle, LAT_latest_angle]
;; the LAT and TeV resolutions
;GRB_wavelength = [TeV_wavelength, LAT_latest_wavelength]
;GRB_resolution = [TeV_resolution, LAT_latest_resolution]
;; the LAT pointsources
;GRB_wavelength = [LAT_pointsource_wavelength]
;GRB_resolution = [LAT_pointsource]
;; or those, rescaled
;GRB_wavelength = [LAT_pointsource_wavelength]
;GRB_resolution = [LAT_pointsource_rescaled]
;; just the GBM catalog
;GRB_wavelength = [GBM_latest_wavelength]
;GRB_resolution = [GBM_latest_radius]
;; both LAT angle and GBM radius
;GRB_wavelength = [LAT_latest_wavelength, GBM_latest_wavelength]
;GRB_resolution = [LAT_latest_angle, GBM_latest_radius]
;; plus the TeV and LAT resolution
;GRB_wavelength = [TeV_wavelength, LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength]
;GRB_resolution = [TeV_resolution, LAT_latest_resolution, LAT_latest_angle, GBM_latest_radius]
;; that, including that generated by scaling the TeV resolutions, which is then all available angles, resolutions, and radii
;GRB_wavelength = [TeV_wavelength, TeV_wavelength, LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength]
;GRB_resolution = [TeV_resolution, TeV_angle, LAT_latest_resolution, LAT_latest_angle, GBM_latest_radius]
;; or just angles and radii
;GRB_wavelength = [TeV_wavelength, LAT_latest_wavelength, GBM_latest_wavelength]
;GRB_resolution = [TeV_angle, LAT_latest_angle, GBM_latest_radius]
;; or rescaled pointsources
;GRB_wavelength = [TeV_wavelength, LAT_pointsource_wavelength, LAT_latest_wavelength, GBM_latest_wavelength]
;GRB_resolution = [TeV_angle, LAT_pointsource_rescaled, LAT_latest_angle, GBM_latest_radius]
; or LAT angle, resolution and GBM radius
GRB_wavelength = [LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength]
GRB_resolution = [LAT_latest_angle, LAT_latest_resolution, GBM_latest_radius]
;; the LAT angle, resolution, and GBM radius including average values
;GRB_wavelength = [LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength_average, GBM_latest_wavelength]
;GRB_resolution = [LAT_latest_angle, LAT_latest_resolution, GBM_latest_radius, GBM_latest_radius]
;; instead, LAT pointsources and GBM resolution
;GRB_wavelength = [LAT_pointsource_wavelength, GBM_latest_wavelength]
;GRB_resolution = [LAT_pointsource, GBM_latest_radius]
;; including Swift
;GRB_wavelength = [BAT_wavelength]
;GRB_resolution = [BAT_resolution]
;; all except LAT pointsources
;GRB_wavelength = [TeV_wavelength, TeV_wavelength, LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength, BAT_wavelength, XRT_wavelength, UVOT_wavelength]
;GRB_resolution = [TeV_resolution, TeV_angle, LAT_latest_resolution, LAT_latest_angle, GBM_latest_radius, BAT_resolution, XRT_resolution, UVOT_resolution]
;; all except TeV angles, or LAT pointsources
;GRB_wavelength = [TeV_wavelength, LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength, BAT_wavelength, XRT_wavelength, UVOT_wavelength]
;GRB_resolution = [TeV_resolution, LAT_latest_resolution, LAT_latest_angle, GBM_latest_radius, BAT_resolution, XRT_resolution, UVOT_resolution]
;; all except TeV angles, or LAT pointsources or XRT or UVOT
;GRB_wavelength = [TeV_wavelength, LAT_latest_wavelength, LAT_latest_wavelength, GBM_latest_wavelength, BAT_wavelength]
;GRB_resolution = [TeV_resolution, LAT_latest_resolution, LAT_latest_angle, GBM_latest_radius, BAT_resolution]
;; everything, including LAT pointsource data
;GRB_wavelength = [TeV_wavelength, TeV_wavelength, LAT_latest_wavelength, LAT_latest_wavelength, LAT_pointsource_wavelength, GBM_latest_wavelength, BAT_wavelength, XRT_wavelength, UVOT_wavelength]
;GRB_resolution = [TeV_resolution, TeV_angle, LAT_latest_resolution, LAT_latest_angle, LAT_pointsource, GBM_latest_radius, BAT_resolution, XRT_resolution, UVOT_resolution]

; reset to LAT pointsources, if showing gamma-ray data only
if display eq 'gamma'  then begin
 ; just the LAT pointsources
 GRB_wavelength = [LAT_pointsource_wavelength]
 GRB_resolution = [LAT_pointsource]
endif

; reset to LAT angles and GBM radius for showing those data
if display eq 'top' or display eq 'both' then begin
; ; just the LAT pointsources
; GRB_wavelength = [LAT_pointsource_wavelength]
; GRB_resolution = [LAT_pointsource]
; ; the LAT pointsources, and GBM radius
; GRB_wavelength = [LAT_pointsource_wavelength, GBM_latest_wavelength] 
; GRB_resolution = [LAT_pointsource, GBM_latest_radius]
 ; the LAT pointsources, and angles along with GBM radius
 GRB_wavelength = [LAT_pointsource_wavelength, LAT_latest_wavelength, GBM_latest_wavelength_average, GBM_latest_wavelength]
 GRB_resolution = [LAT_pointsource, LAT_latest_angle, GBM_latest_radius, GBM_latest_radius]
; ; both LAT angle and GBM radius, including at average wavelength
; GRB_wavelength = [LAT_latest_wavelength, GBM_latest_wavelength_average, GBM_latest_wavelength]
; GRB_resolution = [LAT_latest_angle, GBM_latest_radius, GBM_latest_radius]
; ; both LAT angle and GBM resolution
; GRB_wavelength = [LAT_latest_wavelength, GBM_latest_wavelength]
; GRB_resolution = [LAT_latest_angle, GBM_latest_radius]
; ; or just the GBM catalog
; GRB_wavelength = [GBM_latest_wavelength]
; GRB_resolution = [GBM_latest_radius]
endif

; reset to just GBM, if only showing x-ray data
if display eq 'xray' then begin
 ; just the GBM catalog
 GRB_wavelength = [GBM_latest_wavelength]
 GRB_resolution = [GBM_latest_radius]
endif

; delete any data outside the frame
resolution_low = theta_low
resolution_high = theta_high
GRB_wavelength_hold = [GRB_wavelength]
GRB_resolution_hold = [GRB_resolution]
;GRB_wavelength = GRB_wavelength_hold
;GRB_resolution = GRB_resolution_hold
if min(GRB_wavelength_hold lt wavelength_low) or max(GRB_wavelength_hold gt wavelength_high) then GRB_wavelength(where(GRB_wavelength_hold lt wavelength_low or GRB_wavelength_hold gt wavelength_high)) = 0.
if min(GRB_resolution_hold lt resolution_low) or max(GRB_resolution_hold gt resolution_high) then GRB_resolution(where(GRB_resolution_hold lt resolution_low or GRB_resolution_hold gt resolution_high)) = 0.
;;GRB_wavelength(where(GRB_resolution_hold lt resolution_low or GRB_resolution_hold gt resolution_high)) = 0.
;;GRB_resolution(where(GRB_wavelength_hold lt wavelength_low or GRB_wavelength_hold gt wavelength_high)) = 0.

; eliminate zeros and infinities, essentially "bad" pixels
GRB_resolution = GRB_resolution(where(GRB_wavelength gt 0. and GRB_resolution gt 0.))
GRB_wavelength = GRB_wavelength(where(GRB_wavelength gt 0. and GRB_resolution gt 0.))
GRB_resolution(where(~finite(GRB_wavelength))) = 0 ; getting rid of infinite values
GRB_wavelength(where(~finite(GRB_wavelength))) = 0. ; getting rid of infinite values
GRB_resolution = GRB_resolution(where(GRB_wavelength gt 0.)) ; trimming those set to zero
GRB_wavelength = GRB_wavelength(where(GRB_wavelength gt 0.)) ; trimming those set to zero

; add some placeholders at the low and high wavelengths, to ensure plots scale correctly
GRB_wavelength = [wavelength_low, GRB_wavelength, wavelength_high]
GRB_resolution = [theta_low, GRB_resolution, theta_high]

; plot densities and contours
;density, GRB_wavelength, GRB_resolution, /xlog, /ylog, dsize=[50, 30], ct=-1, /ps_white, nlevels=20, /contour, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, /overplot ; automated program, sort of works
;density, GRB_wavelength, GRB_resolution, /xlog, /ylog, dsize=[number_lambda, number_theta], ct=-1, /ps_white, nlevels=contours, /contour, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, /overplot ; automated program, sort of works

; generate densities, and associated binned wavelengths and resolutions, plotting their contours
densities = density(alog10(GRB_wavelength), alog10(GRB_resolution), nx=number_lambda, ny=number_theta) ;, minx=alog10(wavelength_low), maxx=alog10(wavelength_high), miny=alog10(theta_low), maxy=alog10(theta_high))
densities(where(densities lt 0.)) = 0.
densities = densities/max(densities, /nan)
wavelengths = fltarr(number_lambda, number_theta)
resolutions = wavelengths
wavelength_bins = (alog10(wavelength_high)-alog10(wavelength_low))/float(number_lambda)
resolution_bins = (alog10(theta_high)-alog10(theta_low))/float(number_theta)
;print, wavelength_bins, resolution_bins
for i=0, number_lambda - 1 do begin
 for j=0, number_theta - 1 do begin
  wavelengths(i, j) = wavelength_low + 10.^(alog10(wavelength_low)+wavelength_bins*float(i))
  resolutions(i, j) = theta_low + 10.^(alog10(theta_low)+resolution_bins*float(j))
;  print, wavelengths(i, j), resolutions(i, j), densities(i, j)
 endfor
endfor
densities=shift(densities, 1, 1) ; this density image is is out by one step, so shift it slightly
;densities=fftshift(densities, 0.5, 0.5) ; this density image is is out by something less than one step, so shift it slightly
loadct, 0, /silent ; greyscale
;contour, densities, wavelengths, resolutions, nlevels=contours, color=contours_color, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, charthick=charthick;, /overplot
;contour, densities, wavelengths, resolutions, levels=contours_level, color=contours_color, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, charthick=charthick;, /overplot
contour, densities, wavelengths, resolutions, levels=contours_level, color=0, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, charthick=charthick;, /overplot

; clip the density plot for display
if show_densities eq 'yes' then begin 
densities_display = densities
;densities_display(where(densities_display gt contours_limit)) = contours_limit ; !values.f_nan
densities_display(where(densities_display gt 0.5)) = 0.5 ; !values.f_nan
densities_display(where(densities_display lt 0.)) = 0. ; !values.f_nan ; contours_limit ; 1.
densities_display = 1. - densities_display ; densities_display - 1. ; 1./densities_display ; invert greyscale
densities_display = densities_display/max(densities_display)
;;densities_display = congrid(densities_display, x_display, y_display)
;;tvscl, sqrt(densities_display), 0, 0
densities_display = congrid(densities_display, x_display-195, y_display-150)
;tvscl, sqrt(densities_display), 150, 105 ; white on black
tvscl, alog(densities_display), 150, 100 ; black on white
;if display eq 'wide' then tvscl, sqrt(sqrt(sqrt(1.-densities_display))), 150, 100 ; black on white
;if display eq 'wide' then tvscl, alog(densities_display), 150, 100 ; black on white
;if display eq 'gamma' then tvscl, sqrt(sqrt(sqrt(densities_display))), 150, 100 ; black on white
;if display eq 'gamma' then tvscl, alog(densities_display), 150, 100 ; black on white
;if display eq 'xray' then tvscl, sqrt(1.-densities_display), 150, 100 ; black on white
endif

; and similar, now plotting just contours
densities_contour = densities
densities_contour(where(densities_contour le contours_limit)) = 0. ; contours_limit ; !values.f_nan
densities_contour(where(densities_contour lt 0.)) = 0.
densities_contour = densities_contour/max(densities_contour)
;contour, densities_contour, wavelengths, resolutions, nlevels=contours, color=contours_color, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], xtitle=xtitle, ystyle=1, yrange=[theta_low, theta_high], ytitle=ytitle, charsize=charsize_plot, charthick=charthick, /overplot

; overplot a fit to those data
GBM_latest_radius_fit = GBM_latest_radius(where(GBM_latest_wavelength gt 0. and GBM_latest_radius gt 0.))
GBM_latest_wavelength_fit = GBM_latest_wavelength(where(GBM_latest_wavelength gt 0. and GBM_latest_radius gt 0.))
GBM_latest_radius_fit(where(~finite(GBM_latest_wavelength_fit))) = 0 ; getting rid of infinite values
GBM_latest_wavelength_fit(where(~finite(GBM_latest_wavelength_fit))) = 0. ; getting rid of infinite values
GBM_latest_radius_fit = GBM_latest_radius_fit(where(GBM_latest_wavelength_fit gt 0.)) ; trimming those set to zero
GBM_latest_wavelength_fit = GBM_latest_wavelength_fit(where(GBM_latest_wavelength_fit gt 0.)) ; trimming those set to zero
order = sort(GBM_latest_wavelength_fit)
GBM_latest_wavelength_fit = GBM_latest_wavelength_fit(order)
GBM_latest_radius_fit = GBM_latest_radius_fit(order)
wavelength_roi = where(GBM_latest_wavelength_fit gt 1.e-12 and GBM_latest_wavelength_fit lt 5.e-11) ;1.e-10)
;linfit = linfit(alog10(GBM_latest_wavelength_fit(wavelength_roi)), alog10(GBM_latest_radius_fit(wavelength_roi)), yfit=resolution_fit)
linfit = linfit(GBM_latest_wavelength_fit(wavelength_roi), GBM_latest_radius_fit(wavelength_roi), yfit=resolution_fit)
;oplot, GBM_latest_wavelength_fit(wavelength_roi), resolution_fit(wavelength_roi), thick=3, color=235

; plot some grey shading to show resolution limits
phi_psf = 1.22*wavelength/2.4 ; for HST
; re-shading the strength of regions excluded by instrument or fundamental diffraction or resolution limits
if show_shading eq 'yes' then begin
for i = 0, n_elements(wavelength) - 1 do begin
 loadct, 0, /silent ; greyscale
 oplot, [wavelength(i), wavelength(i)], [theta_low, resolution], color=200, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, phi_psf(i)], color=125, thick=2
endfor
endif

; shading the strength of blurring and excluded regions
if show_shading eq 'yes' then begin
for i = 0, n_elements(wavelength) - 1 do begin
 ; blurring
 loadct, edging_table, /silent ; blue shading
 oplot, [wavelength(i), wavelength(i)], [theta_low, delta_phi_max(i)], color=245, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d + delta_phi_max(i)], color=245, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, delta_phi_0(i)], color=235, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d + delta_phi_0(i)], color=235, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, phi_top(i)], color=225, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d + phi_top(i)], color=225, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_2pi(i)], color=225, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_horizon(i)], color=200, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_theta(i)], color=175, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_resolution(i)], color=150, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_seeing(i)], color=125, thick=2 
; oplot, [wavelength(i), wavelength(i)], [theta_low, factor*rp*wavelength(i)^rho], color=150, thick=2
 loadct, shading_table, /silent ; blue shading
; oplot, [wavelength(i), wavelength(i)], [theta_low, delta_phi_max(i)], color=245, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d + delta_phi_max(i)], color=245, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, delta_phi_0(i)], color=235, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d + delta_phi_0(i)], color=235, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_top(i)], color=225, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d + phi_top(i)], color=225, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, phi_2pi(i)], color=225, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, phi_horizon(i)], color=200, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, phi_theta(i)], color=175, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, phi_resolution(i)], color=150, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, phi_seeing(i)], color=125, thick=2 
; oplot, [wavelength(i), wavelength(i)], [theta_low, factor*rp*wavelength(i)^rho], color=150, thick=2
 loadct, 0, /silent ; greyscale
; if wavelength(i) le l_P then oplot, [wavelength(i), wavelength(i)], [theta_low, theta_high], color=255, thick=2
 oplot, [wavelength(i), wavelength(i)], [2.*!pi, theta_high], color=255, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, delta_phi_P(i)], color=255, thick=2
endfor
endif

; replot simplified, scaled or averaged equations

; averaged redshifts
z_min = min(LAT_latest_redshift(where(LAT_latest_redshift gt 0.)))
z_max = max(LAT_latest_redshift(where(LAT_latest_redshift gt 0.)))
z_med = median(LAT_latest_redshift(where(LAT_latest_redshift gt 0.)))
z_avg = mean(LAT_latest_redshift(where(LAT_latest_redshift gt 0.)), /nan)
print, 'Min, max, median and mean redshift of LAT sample: ', z_min, z_max, z_med, z_avg

; calculate, including instrumental effects, and now possibly also with the opposite possible effect
;horizon = horizon_LAT
;theta = horizon_GBM
;alpha = alpha_high ; weakest
alpha = alpha_low ; strongest
z = z_high ; z_high ; z_max ; z_avg ; z_med ; z_min ; z_low
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
delta_phi_P = 2.*!pi*l_P/wavelength ; radians
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_resolution = resolution*(1. + A*(1. + alog((2.*!pi*l_P)/(resolution*wavelength)))) ; radians
phi_seeing = seeing*(1. + A*(1. + alog((2.*!pi*l_P)/(seeing*wavelength)))) ; radians
phi_top = phi_limit
wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
;oplot, wavelength, delta_phi_max, color=0
oplot, wavelength, 1.22*wavelength/d + delta_phi_max, color=0
;oplot, wavelength, delta_phi_0, color=0
oplot, wavelength, 1.22*wavelength/d + delta_phi_0, color=0
;oplot, wavelength, phi_limit, color=0
oplot, wavelength, phi_2pi, color=0
;oplot, wavelength, phi_top, color=0
oplot, wavelength, 1.22*wavelength/d + phi_top, color=0
oplot, wavelength, phi_horizon, color=0
oplot, wavelength, phi_theta, color=0
oplot, wavelength, phi_resolution, color=0
;oplot, wavelength, phi_seeing, color=0

; averaged, just within the LAT detector window
wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
phi_avg = 2.*!pi*(1. + A*(1. + alog(0.25*l_P/wavelength))) ; radians
;phi_avg = 2.*!pi*(1. + A*(1. + alog(0.333*l_P/wavelength))) ; radians
;phi_avg = 2.*!pi*(1. + A*(1. + alog(0.5*l_P/wavelength))) ; radians
energy = 2.*!pi*c*h_bar/(wavelength*eV) ; eV
theta_psf = sqrt((c_0*((energy/1.e6)/100.)^(-1.*rho_LAT))^2. + c_1^2.)
;oplot, wavelength(wavelength_window), phi_avg(wavelength_window) + 0.5*theta_psf(wavelength_window), thick=8, color=150
;oplot, wavelength(wavelength_window), phi_avg(wavelength_window) + 0.333*theta_psf(wavelength_window), thick=8, color=150
;oplot, wavelength(wavelength_window), phi_avg(wavelength_window) + 0.25*theta_psf(wavelength_window), thick=8, color=150

; averaged, just within the GBM detector window
wavelength_window = where((wavelength ge wavelength_LAT_high) and (wavelength lt 1.e-9))
delta_phi_avg =  delta_phi_max ; radians, holding onto this averaged value
delta_phi_avg = resolution_GBM_low + delta_phi_avg ; radians, holding onto this averaged value
;oplot, wavelength(wavelength_window), delta_phi_avg(wavelength_window), thick=8, color=150

;; and a line of redshifted colour within the GBM detector window
;;delta_phi_redshifted = resolution_GBM_low + (1.+(z_max-z_min))*delta_phi_max
;;delta_phi_redshifted = resolution_GBM_low + delta_phi_max((1.+(z_max-z_min))*wavelength)
;;delta_phi_redshifted = resolution_GBM_low + (1.+(z_max-z_min))*(wavelength/GBM_latest_wavelength_mean)*(resolution_GBM_low)
;delta_phi_redshifted = (1.+(z_max-z_min))*(wavelength/GBM_latest_wavelength_mean)*(resolution_GBM_low)
;;oplot, wavelength, delta_phi_redshifted, linestyle=4, color=0
;oplot, wavelength(wavelength_window), delta_phi_redshifted(wavelength_window), linestyle=4, color=0

; shading, given a selection for strength and redshift
;z = z_low
z = z_high
;alpha = alpha_high ; weakest
alpha = alpha_low ; strongest
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
;phi_scaled = 4.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_psf = rp*wavelength^rho
;phi_psf(where(phi_psf gt theta)) = theta
; re-shading the strength of regions excluded by instrument or fundamental diffraction or limits
if show_shading eq 'yes' then begin
for i = 0, n_elements(wavelength) - 1 do begin
 loadct, 0, /silent ; greyscale
 if wavelength(i) le wavelength_LAT_low then begin
  oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_TeV_low], color=225, thick=2
 endif
 if wavelength(i) gt wavelength_LAT_low and wavelength(i) le wavelength_LAT_high then begin
  loadct, shading_table, /silent ; blue shading
;  oplot, [wavelength(i), wavelength(i)], [theta_low, factor*rp*wavelength(i)^rho], color=175, thick=2
;  oplot, [wavelength(i), wavelength(i)], [theta_low, rp*wavelength(i)^rho + phi_theta(i)], color=175, thick=2
  loadct, 0, /silent ; greyscale
 endif
 if wavelength(i) gt wavelength_LAT_low and wavelength(i) le wavelength_LAT_high then begin
  if display eq 'wide' then oplot, [wavelength(i), wavelength(i)], [theta_low, rp*wavelength(i)^rho], color=150, thick=2
  if display eq 'gamma' or display eq 'both' then  oplot, [wavelength(i), wavelength(i)], [theta_low, phi_psf(i)], color=150, thick=2
 endif
 if wavelength(i) gt wavelength_LAT_high and wavelength(i) le wavelength_GBM_low then begin
  oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_GBM_low], color=225, thick=2
 endif
 if wavelength(i) gt wavelength_LAT_high and wavelength(i) le wavelength_BAT_low then begin
  oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_GBM_low], color=225, thick=2
 endif
 if wavelength(i) gt wavelength_BAT_low and wavelength(i) le wavelength_BAT_high then begin
  oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_BAT_low], color=225, thick=2
 endif  
 if wavelength(i) gt wavelength_XRT_low and wavelength(i) le wavelength_UVOT_low then begin
  oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_XRT_low], color=225, thick=2
 endif
 if wavelength(i) gt wavelength_UVOT_low and wavelength(i) le wavelength_UVOT_high then begin
  oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_UVOT_low], color=225, thick=2
 endif
 oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/d], color=75, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/2.4], color=75, thick=2
; oplot, [wavelength(i), wavelength(i)], [theta_low, 1.22*wavelength(i)/6.5], color=50, thick=2
 oplot, [wavelength(i), wavelength(i)], [theta_low, delta_phi_P(i)], color=225, thick=2 ; 255, thick=2
 oplot, [wavelength(i), wavelength(i)], [2.*!pi, theta_high], color=255, thick=2
endfor
endif
; the upper limit to the blurring-induced PSF
;loadct, colour_table, /silent ; rainbow, blue to red
loadct, 0, /silent ; greyscale
;oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), thick=5, color=255 ; 150
;oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), color=0
;oplot, wavelength(wavelength_window), (1./LAT_psf_scaling)*(rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window)), thick=5, color=200
;oplot, wavelength(wavelength_window), (horizon/theta)*(rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window)), thick=7, color=200

;; and theta
;oplot, wavelength, replicate(theta, n_elements(wavelength)), linestyle=2, thick=5, color=255
;oplot, wavelength, replicate(theta, n_elements(wavelength)), linestyle=3, color=0

; by redshift distribution, and possibly scaling with strength strongest to weakest
if show_smooth eq 'yes' then begin 
;redshifts = LAT_latest_redshift(where(LAT_latest_redshift gt 0.)) ; taking them from the known distribution
;redshifts = [z_min, z_med, z_avg, z_max] ; instead, from statistics
;redshifts = [z_min, z_avg, z_max] ; instead, from statistics
;redshifts = [z_min, z_med, z_max] ; instead, from statistics
;redshifts = [z_min, z_max] ; instead, from statistics
;redshifts = [z_low, z_min, z_avg, z_max] ; that, plus a lowest redshift, and maximum
;redshifts = [z_low, z_min, z_avg, z_high] ; that, plus a lowest redshift, and highest
;redshifts = z_min + z_max*findgen(1000)/1000. ; smooth distribution from minimum to maximum redshift, linear
;redshifts = z_min + z_max*distribution ; smooth distribution from minimum to maximum redshift
;redshifts = z_low + z_max*distribution ; smooth distribution from lowest to maximum redshift
redshifts = z_low + z_high*distribution ; smooth distribution from lowest to highest redshift
redshifts = redshifts(sort(redshifts))
;colours = 254*float(redshifts)/max(redshifts) ; linear scaling with redshifts
colours = 254*distribution*float(redshifts)/max(redshifts) ; scaling as defined above
loadct, colour_table, /silent ; rainbow, blue to red
for i = 0, n_elements(redshifts) - 1 do begin
 alpha = alpha_low ; strongest
; alpha = alpha_mean ; mean value
; alpha = alpha_high ; weakest
 z = redshifts(i)
 colour = colours(i)
 q_0 = 0.5
 L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
 L = double(conversion*L) ; metres
 if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
 S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
 delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
 delta_phi_max = (1. + z)*delta_phi_0 ; radians
 Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
 A = 1./alog(Ap) ; dimensionless
 phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
 phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
 phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
 phi_theta_max = phi_theta ; hold onto this as the maximal case
 phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
; phi_scaled = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
; phi_scaled = horizon*(1. + A*(1. + alog(l_P/wavelength))) ; radians
; phi_scaled = theta*(1. + A*(1. + alog(l_P/wavelength))) ; radians
; phi_scaled = 4.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
 phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
; phi_scaled = horizon*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
; phi_scaled = theta*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
; phi_scaled = resolution*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
 phi_top = phi_limit
 phi_middle = phi_limit
 phi_bottom = phi_limit
 wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
 phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
 wavelength_middle = max(wavelength(where(phi_limit-phi_horizon eq min(phi_limit-phi_horizon))))
 phi_middle(where(wavelength le wavelength_middle)) = phi_horizon(where(wavelength le wavelength_middle))
 wavelength_bottom = max(wavelength(where(phi_limit-phi_theta eq min(phi_limit-phi_theta))))
 phi_bottom(where(wavelength le wavelength_bottom)) = phi_theta(where(wavelength le wavelength_bottom))
 
 ; plotted for GBM
 theta_psf = resolution_GBM_low ; radians
; theta_psf = 0.5*resolution_GBM_low ; radians
 wavelength_window = where((wavelength ge wavelength_GBM_low) and (wavelength lt wavelength_GBM_high))
; delta_phi_cut = delta_phi_max
; delta_phi_cut = delta_phi_0
 delta_phi_cut = phi_top
 delta_phi_cut(where(delta_phi_cut gt horizon_GBM)) = !values.f_nan ; horizon_GBM ; !values.f_nan ; horizon
 delta_phi_cut(where(delta_phi_cut le resolution_GBM_low)) = !values.f_nan ; resolution_GBM ; !values.f_nan ; resolution
 wavelength_corner = max(wavelength(where(delta_phi_max gt theta_psf)))
 wavelength_window = where((wavelength ge wavelength_GBM_low) and (wavelength lt wavelength_corner))
; oplot, wavelength(wavelength_window), delta_phi_cut(wavelength_window), thick=3, color=colour 
; wavelength_window = where((wavelength ge wavelength_corner) and (wavelength lt wavelength_GBM_high))
 resolution_line = replicate(resolution_GBM_low, n_elements(wavelength))
; oplot, wavelength(wavelength_window), resolution_line(wavelength_window), thick=3, color=colour

 ; plotted for LAT
 energy = 2.*!pi*c*h_bar/(wavelength*eV) ; eV
 theta_psf = sqrt((c_0*((energy/1.e6)/100.)^(-1.*rho_LAT))^2. + c_1^2.) ; radians
 wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
 phi_psf = rp*wavelength^rho
 phi_psf(where(phi_psf gt theta)) = theta
; phi_psf(where(phi_psf gt phi_theta)) = phi_theta(where(phi_psf gt phi_theta))
; phi_psf(where(phi_psf gt phi_theta_max)) = phi_theta_max(where(phi_psf gt phi_theta_max))
; phi_psf(where(phi_psf gt phi_theta_max)) = phi_scaled(where(phi_psf gt phi_theta_max))
 phi_scaled_cut = phi_scaled
 phi_scaled_cut(where(phi_scaled lt phi_psf)) = seeing ; resolution ; !values.f_nan ; setting it to a fixed lower limit, to allow a smooth plot
; phi_scaled_cut(where(phi_scaled lt resolution)) = seeing ; resolution ; !values.f_nan ; setting it to a fixed lower limit, to allow a smooth plot
; phi_scaled_cut(where(phi_scaled lt phi_psf)) = !values.f_nan
; phi_scaled_cut(where(phi_scaled lt resolution)) = !values.f_nan
; phi_scaled_cut(where(phi_scaled lt phi_limit)) = !values.f_nan 
; oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), thick=3, color=colour
oplot, wavelength(wavelength_window), phi_scaled_cut(wavelength_window), thick=3, color=colour
 
 ; scaling to the weakest case for LAT
; alpha = alpha_low ; strongest
 alpha = alpha_high ; weakest
 z = redshifts(i)
 colour = colours(i)
 q_0 = 0.5
 L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
 L = double(conversion*L) ; metres
 if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
 S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
 delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
 delta_phi_max = (1. + z)*delta_phi_0 ; radians
 Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
 A = 1./alog(Ap) ; dimensionless
 phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
 phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
 phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
 phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
 ; the resolution limit for LAT
; oplot, wavelength(wavelength_window), phi_theta(wavelength_window) + rp*wavelength(wavelength_window)^rho, thick=3, color=colour
; oplot, wavelength(wavelength_window), phi_theta(wavelength_window) + phi_psf(wavelength_window), thick=3, color=colour
 ; the "cross-resolution" curves for LAT
 wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high) and (delta_phi_max lt phi_psf))
 oplot, wavelength(wavelength_window), delta_phi_max(wavelength_window), thick=3, color=colour

 ; plotted for GBM or Swift, or longward
 theta_psf = resolution_GBM_low ; radians
; theta_psf = 0.5*resolution_GBM_low ; radians
 wavelength_window = where(wavelength ge wavelength_GBM_low) ; if GBM and longward
 delta_phi_cut = delta_phi_max
 delta_phi_cut(where(delta_phi_cut gt horizon_GBM)) = !values.f_nan ; horizon_GBM ; !values.f_nan ; horizon
; oplot, wavelength(wavelength_window), delta_phi_cut(wavelength_window), thick=3, color=colour 

; ; or, combined as an average across both windows
; wavelength_window = where((wavelength ge wavelength_LAT_low))
; oplot, wavelength(wavelength_window), (delta_phi_max(wavelength_window)+phi_top(wavelength_window)+phi_middle(wavelength_window))/3., thick=3, color=colour
 ; or, a simple average
; oplot, wavelength(wavelength_window), (phi_top(wavelength_window)+phi_middle(wavelength_window))/2., thick=3, color=colour
; oplot, wavelength(wavelength_window), (phi_top(wavelength_window)+phi_bottom(wavelength_window))/3., thick=3, color=colour
; oplot, wavelength(wavelength_window), (phi_top(wavelength_window)+phi_middle(wavelength_window)+phi_bottom(wavelength_window))/3., thick=3, color=colour 

endfor
; replot
loadct, 0, /silent ; back to greyscale
; back to the strongest case
alpha = alpha_low ; strongest
; or the mean
;alpha = alpha_mean ; mean
; and for a particular redshift
z = z_avg ; z_med ; z_avg ; z_med ; z_cutoff ; z_special
;colour=0 ; black
colour=150 ; 200 ; 150 ; 100 ; grey
;colour=255 ; white
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
;phi_scaled = 4.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_top = phi_limit
phi_middle = phi_limit
phi_bottom = phi_limit
wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
wavelength_middle = max(wavelength(where(phi_limit-phi_horizon eq min(phi_limit-phi_horizon))))
phi_middle(where(wavelength le wavelength_middle)) = phi_horizon(where(wavelength le wavelength_middle))
wavelength_bottom = max(wavelength(where(phi_limit-phi_theta eq min(phi_limit-phi_theta))))
phi_bottom(where(wavelength le wavelength_bottom)) = phi_theta(where(wavelength le wavelength_bottom))
; plotted for LAT
energy = 2.*!pi*c*h_bar/(wavelength*eV) ; eV
theta_psf = sqrt((c_0*((energy/1.e6)/100.)^(-1.*rho_LAT))^2. + c_1^2.) ; radians
wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
phi_scaled(where(phi_scaled le phi_psf)) = !values.f_nan
;oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), thick=5, color=colour
oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), thick=5, linestyle=2, color=colour
;oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), color=0
; plotted for GBM
theta_psf = resolution_GBM_low ; radians
; theta_psf = 0.5*resolution_GBM_low ; radians
wavelength_window = where((wavelength ge wavelength_GBM_low) and (wavelength lt wavelength_GBM_high))
phi_cut = phi_top
phi_cut(where(phi_cut gt horizon_GBM)) = !values.f_nan
phi_cut(where(phi_cut le resolution_GBM_low)) = !values.f_nan
wavelength_corner = max(wavelength(where(delta_phi_max gt theta_psf)))
wavelength_window = where((wavelength ge wavelength_GBM_low) and (wavelength lt wavelength_corner))
;oplot, wavelength(wavelength_window), phi_cut(wavelength_window), thick=5, color=colour
; plotted for GBM or Swift, or longward
wavelength_window = where(wavelength ge wavelength_GBM_low) ; if GBM and longward
phi_cut = delta_phi_max
phi_cut(where(phi_cut gt horizon_GBM)) = !values.f_nan ; horizon_GBM ; !values.f_nan ; horizon
;oplot, wavelength(wavelength_window), phi_cut(wavelength_window), thick=5, color=colour
;; or the whole wide range
;oplot, wavelength, phi_cut, thick=5, color=colour
endif

; clean up by re-plotting the shading for LAT
phi_psf = rp*wavelength^rho
;phi_psf(where(phi_psf gt theta)) = theta
; re-shading the strength of regions excluded by instrument or fundamental diffraction or limits
if show_shading eq 'yes' then begin
for i = 0, n_elements(wavelength) - 1 do begin
 loadct, 0, /silent ; greyscale
 if wavelength(i) gt wavelength_LAT_low and wavelength(i) le wavelength_LAT_high then begin
  if display eq 'gamma' or display eq 'both' then  oplot, [wavelength(i), wavelength(i)], [theta_low, phi_psf(i)], color=150, thick=2
 endif
endfor
endif
; and a dark line for the edge of the HST resolution
phi_psf = 1.22*wavelength/2.4 ; for HST
oplot, wavelength, phi_psf, color=0

; the upper limit to the blurring-induced PSF, possibly including a halo
wavelength_window = where(wavelength gt wavelength_LAT_low and wavelength lt wavelength_LAT_high)
oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), color=0
; and rescaling, which matches the measured PSF
loadct, 0, /silent ; greyscale
;oplot, wavelength(wavelength_window), horizon/theta*(rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window)), thick=5, color=100
;oplot, wavelength(wavelength_window), 1.22*horizon/theta*(rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window)), thick=5, color=100
;oplot, wavelength(wavelength_window), (horizon/(1.22*theta))*(rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window)), thick=5, color=100
;wavelength_window = where(wavelength lt wavelength_LAT_high)
; plotted, including at the inner edge, so including a halo a single angle
wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
;wavelength_window = where((wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
if display eq 'both' or display eq 'gamma' then oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window) + halo, thick=12, color=100 ; color=0 ;colour
oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), color=0
;; and the rescaled, measured PSF with the halo
;oplot, wavelength(wavelength_window), (theta/horizon)*LAT_psf(wavelength_window) + halo, linestyle=3, color=0

; and theta
loadct, 0, /silent ; greyscale
oplot, wavelength, replicate(theta, n_elements(wavelength)), linestyle=2, thick=5, color=255
oplot, wavelength, replicate(theta, n_elements(wavelength)), linestyle=3, color=0

; replot at the top
loadct, 0, /silent ; back to greyscale
; back to the strongest case
alpha = alpha_low ; strongest
; or the mean
;alpha = alpha_mean ; mean
; and for a particular redshift
z = z_avg ; z_med ; z_avg ; z_med ; z_cutoff ; z_special
;colour=0 ; black
colour=150 ; 200 ; 150 ; 100 ; grey
;colour=255 ; white
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
phi_top = phi_limit
wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
; kludge: hold onto the wavelength at which this crosses twice the angle of theta
wavelength_crossing_theta = wavelength(max(where(phi_scaled gt 2.*theta)))
; and plot the median redshift average blurring
oplot, wavelength, phi_top + diffraction, thick=5, color=colour
;oplot, wavelength, phi_scaled, thick=3, linestyle=2, color=colour
wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), thick=5, linestyle=2, color=colour

; similar, but the "middle" redshift
loadct, 0, /silent ; back to greyscale
; back to the strongest case
alpha = alpha_low ; strongest
; or the mean
;alpha = alpha_mean ; mean
; and for a particular redshift
z = z_middle ; z_med ; z_avg ; z_med ; z_cutoff ; z_special
;colour=0 ; black
colour=150 ; 200 ; 150 ; 100 ; grey
;colour=255 ; white
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
phi_top = phi_limit
wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
; kludge: hold onto the wavelength at which this crosses twice the angle of theta
wavelength_crossing_theta = wavelength(max(where(phi_scaled gt 2.*theta)))
; and plot the median redshift average blurring
;oplot, wavelength, phi_top + diffraction, thick=5, color=colour
;oplot, wavelength, phi_scaled, thick=3, linestyle=2, color=colour
wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
;oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), thick=5, linestyle=2, color=colour

; and for another particular redshift
z = z_special ; z_avg ; z_med ; z_cutoff ; z_special
;colour=0 ; black
;colour=150 ; 200 ; 150 ; 100 ; grey
colour=255 ; white
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
phi_top = phi_limit
wavelength_top = max(wavelength(where(phi_limit-phi_2pi eq min(phi_limit-phi_2pi))))
phi_top(where(wavelength le wavelength_top)) = phi_2pi(where(wavelength le wavelength_top))
;oplot, wavelength, phi_top, thick=5, color=colour
oplot, wavelength, phi_top + diffraction, thick=5, color=colour
; overplotted in black below theta
wavelength_window = where(phi_top lt theta)
oplot, wavelength(wavelength_window), phi_top(wavelength_window) + diffraction(wavelength_window), thick=3, color=0

; and below, redshift back to some particular value, say lowest or highest, reversing the strength and recalculating for LAT
z = z_special ; z_low ; z_special ; z_med ; z_avg ; z_high
alpha = alpha_high ; weakest
;alpha = alpha_low ; strongest
colour=0 ; black or purple
;colour=150 ; 200 ; 150 ; 100 ; grey
;colour=255 ; white
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
;phi_scaled = 4.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
loadct, colour_table, /silent ; rainbow, blue to red
loadct, 0, /silent ; greyscale
;wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
;wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
wavelength_window = where((wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), thick=5, color=255 ; white
;oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), thick=3, linestyle=2, color=0 ; black
;wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
;oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), thick=5, color=255 ; 0 ; white
oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), thick=3, color=colour ; 0 ; black or purple
;oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), color=0

; again, redshift at some particular value, reversing the strength or setting to the weakest, and recalculating for LAT
z = z_avg ; z_med ; z_low ; z_special ; z_med ; z_avg ; z_high
;alpha = alpha_high ; weakest
alpha = alpha_mean ; average
;alpha = alpha_low ; strongest
;colour=0 ; black
colour=150 ;200 ; 150 ; 100 ; grey
;colour=255 ; white
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
;phi_scaled = 4.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
loadct, colour_table, /silent ; rainbow, blue to red
loadct, 0, /silent ; greyscale
;wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
;wavelength_window = where((wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
;wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
wavelength_window = where((wavelength lt wavelength_LAT_high) and (rp*wavelength^rho + phi_theta lt theta))
oplot, wavelength(wavelength_window), rp*wavelength(wavelength_window)^rho + phi_theta(wavelength_window), thick=5, color=colour

; one more time, for the either the highest or lowest redshift, weakest or strongest effect for LAT
alpha = alpha_low ; alpha_high ; alpha_low
z = z_high ; z_low ; z_high
q_0 = 0.5
L = 0.001*(c/(q_0^2.*H_0))*(q_0*z - (1. - q_0)*(sqrt(1.+2.*q_0*z) - 1.)) ; Mpc
L = double(conversion*L) ; metres
if comoving eq 'yes' then L = L/(1.+z) ; metres, converted to co-moving distance
S = ((1.+z)^2.)/L ; radians/metre, angular distance scale
delta_phi_0 = 2.*!pi*a_0*(l_P^alpha/wavelength)*L^(1. - alpha); radians
delta_phi_max = (1. + z)*delta_phi_0 ; radians
Ap = a_0*(1. + z)*(L/l_P)^(1. - alpha) ; dimensionless
A = 1./alog(Ap) ; dimensionless
phi_2pi = 2.*!pi*(1. + A*(1. + alog(l_P/wavelength))) ; radians
phi_horizon = horizon*(1. + A*(1. + alog((2.*!pi*l_P)/(horizon*wavelength)))) ; radians
phi_theta = theta*(1. + A*(1. + alog((2.*!pi*l_P)/(theta*wavelength)))) ; radians
phi_limit = 2.*!pi*(l_P/wavelength)*A*exp(1./A) ; radians
;phi_scaled = 4.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
phi_scaled = 2.*!pi*(1. + phi_rescaling*A*(1. + alog(l_P/wavelength))) ; radians
loadct, 0, /silent ; greyscale
wavelength_window = where((wavelength ge wavelength_LAT_low) and (wavelength lt wavelength_LAT_high))
; plotting the other part of the inner edge
;oplot, wavelength(wavelength_window), phi_scaled(wavelength_window), thick=5, color=0

; replot contours
if show_contours eq 'yes' and display eq 'wide' then begin
loadct, 0, /silent ; greyscale
;loadct, colour_table, /silent ; rainbow, blue to red
;contour, densities_contour, wavelengths, resolutions, nlevels=contours, color=contours_color, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, color=0, /overplot
;contour, densities_contour, wavelengths, resolutions, level=contours_level, color=contours_color, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, color=0, /overplot
contour, densities_contour, wavelengths, resolutions, level=contours_level, color=100, thick=3, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
;contour, densities_contour, wavelengths, resolutions, level=contours_level, color=0, thick=1, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
contour, densities_contour, wavelengths, resolutions, level=contours_peak, color=255, thick=3, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
;contour, densities_contour, wavelengths, resolutions, level=contours_peak, color=0, thick=1, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
loadct, 0, /silent ; greyscale
; cleaning up extra added point, by re-shading 
if show_shading eq 'yes' then begin
 for i = 0, n_elements(wavelength) - 1 do begin
  if wavelength(i) le wavelength_LAT_low then begin
   oplot, [wavelength(i), wavelength(i)], [theta_low, resolution_TeV_low], color=225, thick=2
  endif
 endfor
endif
endif

; limits
; crossing, set by the last alpha (strongest case) and redshift (mean or special)
oplot, [wavelength_top, wavelength_top], [theta_low, theta_high], linestyle=1, color=0
if display eq 'wide' then xyouts, 1.5*wavelength_top, 9000.*theta_low, 'Horizon Crossing', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'both' then xyouts, 1.5*wavelength_top, 15.*theta_low, 'Horizon Crossing', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0

; horizon
oplot, wavelength, replicate(2.*!pi, n_elements(wavelength)), linestyle=3, color=0
xyouts, wavelength_res, 0.6*2*!pi, 'Horizon', color=0, charsize=charsize_label, charthick=charthick_out
;xyouts, 0.01*wavelength_high, horizon, 'Effective', color=0, charsize=charsize_label, charthick=charthick_out
;xyouts, 0.01*wavelength_high, 0.5*horizon, 'Horizon', color=0, charsize=charsize_label, charthick=charthick_out
;if display eq 'wide' then xyouts, wavelength_res, 0.6*horizon, 'Avg. angle', color=0, charsize=charsize_label, charthick=charthick_out
if display eq 'wide' then xyouts, wavelength_res, 0.6*horizon, 'Field of View', color=0, charsize=charsize_label, charthick=charthick_out
;if display eq 'wide' then arrow, wavelength_phi, horizon, wavelength_phi, 0.5*horizon, color=0, /solid, /data
oplot, wavelength, replicate(horizon, n_elements(wavelength)), linestyle=3, color=0
xyouts, 0.85*wavelength_low, 2.*!pi, textoidl("2\pi"), charsize=charsize_plot, orientation=0., charthick=charthick, font=-1, alignment=1., color=0

; Phi
if display eq 'wide' then xyouts, 0.075*wavelength_phi, 0.5*phi_2pi(min(where(wavelength gt wavelength_phi))), textoidl("\Phi"), charsize=1.75*charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

;oplot, wavelength, phi_2pi, thick=1, color=0
;xyouts, wavelength_phi, 0.5*phi_2pi(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{2\pi}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;xyouts, 0.5*wavelength_phi, phi_2pi(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=180., charthick=charthick_out, font=-1, alignment=0., color=0
;oplot, wavelength, phi_horizon, thick=1, color=0
if display eq 'wide' then xyouts, 1.2*wavelength_phi, 1.2*phi_2pi(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{Hor}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, wavelength_phi, phi_2pi(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, 1.2*wavelength_phi, 1.5*phi_2pi(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{Hor}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, wavelength_phi, phi_2pi(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'wide' then xyouts, wavelength_phi, 0.5*phi_horizon(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{angle}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; Phi, or Field of View
if display eq 'wide' then xyouts, 1.2*wavelength_phi, 1.2*phi_horizon(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{FoV}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, wavelength_phi, phi_horizon(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, 1.2*wavelength_phi, 1.5*phi_horizon(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{FoV}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, wavelength_phi, phi_horizon(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; Phi scaled
;if display eq 'wide' then xyouts, 0.01*wavelength_crossing_theta, 2.*theta, textoidl("\Phi_{Scaled}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'wide' then xyouts, wavelength_crossing_theta, 2.*theta, '|', charsize=charsize_phi, orientation=90., charthick=charthick_out, font=-1, alignment=1., color=0
;if display eq 'wide' then xyouts, wavelength_phi, 1.5*horizon, textoidl("\Phi_{Scaled}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'wide' then xyouts, 100.*wavelength_phi, 1.5*horizon, '|', charsize=charsize_phi, orientation=90., charthick=charthick_out, font=-1, alignment=1., color=0
;if display eq 'both' then xyouts, 0.05*wavelength_crossing_theta, 2.*theta, textoidl("\Phi_{Scaled}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, wavelength_crossing_theta, 2.*theta, '|', charsize=charsize_phi, orientation=90., charthick=charthick_out, font=-1, alignment=1., color=0
if display eq 'both' then xyouts, wavelength_phi, 0.65, textoidl("\Phi_{Scaled}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'both' then xyouts, 20.*wavelength_phi, 0.65, '|', charsize=charsize_phi, orientation=90., charthick=charthick_out, font=-1, alignment=1., color=0

; theta
;xyouts, 2.*wavelength_low, 0.5*theta, textoidl("\theta"), color=0, charsize=charsize_phi, charthick=charthick_out
;xyouts, wavelength_phi, 0.5*theta, 'Theta', color=0, charsize=charsize_label, charthick=charthick_out
;xyouts, 0.01*wavelength_high, 0.5*theta, 'Theta', color=0, charsize=charsize_label, charthick=charthick_out
if display eq 'wide' then xyouts, wavelength_res, 0.6*theta, 'Theta', color=0, charsize=charsize_label, charthick=charthick_out
if display eq 'both' then xyouts, 1.2*wavelength_phi, 1.2*theta, 'Theta', color=0, charsize=charsize_label, charthick=charthick_out
;if display eq 'wide' then arrow, wavelength_phi, theta, wavelength_phi, 2.*theta, color=0, /solid, /data
;oplot, wavelength, replicate(theta, n_elements(wavelength)), linestyle=2, thick=5, color=255
;oplot, wavelength, replicate(theta, n_elements(wavelength)), linestyle=3, color=0
;xyouts, wavelength_phi, 0.5*phi_theta(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_\theta"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, 1.2*wavelength_phi, 1.2*phi_theta(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{Theta}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, wavelength_phi, phi_theta(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, 1.2*wavelength_phi, 1.5*phi_theta(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{Theta}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, wavelength_phi, phi_theta(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; resolution
xyouts, wavelength_res, 0.6*resolution, 'Resolution', color=0, charsize=charsize_label, charthick=charthick_out
oplot, wavelength, replicate(resolution, n_elements(wavelength)), linestyle=3, color=0
if display eq 'wide' then xyouts, 1.2*wavelength_phi, 1.2*phi_resolution(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{Res}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, wavelength_phi, phi_resolution(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, 1.2*wavelength_phi, 1.5*phi_resolution(min(where(wavelength gt wavelength_phi))), textoidl("\Phi_{Res}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'both' then xyouts, wavelength_phi, phi_resolution(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

; seeing
;xyouts, wavelength_res, 1.2*seeing, strmid(strtrim(string(seeing*206265.), 2), 0, 4)+ '"', color=0, charsize=charsize_label
xyouts, wavelength_res, 0.6*seeing, 'Seeing', color=0, charsize=charsize_label, charthick=charthick_out
oplot, wavelength, replicate(seeing, n_elements(wavelength)), linestyle=3, color=0
;oplot, wavelength, replicate(seeing, n_elements(wavelength)), thick=2, color=0

; limiting cases
;oplot, wavelength, delta_phi_0, thick=1, linestyle=0, color=0
;oplot, wavelength, delta_phi_0, thick=1, linestyle=0, color=0
;oplot, wavelength, 1.22*wavelength/d + delta_phi_0, thick=1, linestyle=0, color=0
;oplot, wavelength, 1.22*wavelength/d + delta_phi_max, thick=1, linestyle=0, color=0
;oplot, wavelength, delta_phi_max, thick=1, linestyle=0, color=0
xyouts, max(wavelength(where(delta_phi_max ge 4.))), 3.5, textoidl("\Delta\phi_{max}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=-0.5, color=0
xyouts, max(wavelength(where(delta_phi_max ge 4.))), 4.5, '|', charsize=charsize_phi, orientation=-90., charthick=charthick_out, font=-1, alignment=-0.5, color=0
xyouts, max(wavelength(where(delta_phi_0 ge 2.5))), 2., textoidl("\Delta\phi_{o}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=-0.5, color=0
xyouts, max(wavelength(where(delta_phi_0 ge 2.5))), 3., '|', charsize=charsize_phi, orientation=-90., charthick=charthick_out, font=-1, alignment=-0.5, color=0
oplot, wavelength, diffraction, linestyle=0, color=0
oplot, wavelength, delta_phi_P, linestyle=0, color=0
xyouts, wavelength_phi, 2.*delta_phi_P(min(where(wavelength gt wavelength_phi))), textoidl("\Delta\phi_{P}"), charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
xyouts, wavelength_phi, delta_phi_P(min(where(wavelength gt wavelength_phi))), '|', charsize=charsize_phi, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, wavelength, replicate(delta_phi_P_0, n_elements(wavelength)), linestyle=1, color=0
oplot, [wavelength_GZK, wavelength_GZK], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
xyouts, 1.5*wavelength_GZK, 0.02, 'GZK cutoff', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then oplot, [wavelength_250TeV, wavelength_250TeV], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
if display eq 'wide' then xyouts, 1.5*wavelength_250TeV, 2000.*theta_low, '250 TeV', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then oplot, [wavelength_20TeV, wavelength_20TeV], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
if display eq 'wide' then xyouts, 1.5*wavelength_20TeV, 2000.*theta_low, '20 TeV', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then oplot, [wavelength_100GeV, wavelength_100GeV], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
if display eq 'wide' then xyouts, 1.5*wavelength_100GeV, 2000.*theta_low, '100 GeV', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then oplot, [wavelength_10GeV, wavelength_10GeV], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
if display eq 'wide' then xyouts, 1.5*wavelength_10GeV, 2000.*theta_low, '10 GeV', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then oplot, [wavelength_10MeV, wavelength_10MeV], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
if display eq 'wide' then xyouts, 1.5*wavelength_10MeV, 2000.*theta_low, '10 MeV', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then oplot, [wavelength_100keV, wavelength_100keV], [0.0001*delta_phi_P_0, 1000.*2.*!pi], color=0, linestyle=1
if display eq 'wide' then xyouts, 1.5*wavelength_100keV, 2000.*theta_low, '100 keV', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'wide' then xyouts, 0.8*wavelength_optical, 2000.*theta_low, 'Optical', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'wide' then xyouts, 0.8*wavelength_infrared, 5000.*theta_low, 'Near Infrared', charsize=charsize,_label orientation=-90., charthick=charthick,_out font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, 0.8*wavelength_optical, 3000.*theta_low, 'HST Optical', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, 0.8*wavelength_ground, 5000.*theta_low, 'Ground Optical', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'wide' then xyouts, 0.8*wavelength_infrared, 2000.*theta_low, 'JWST Infrared', charsize=charsize_label, orientation=-90., charthick=charthick_out, font=-1, alignment=0., color=0
;if display eq 'gamma' then begin
; xyouts, wavelength_phi, 1.5, textoidl("\Phi"), charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, 1., '|', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, 0.45, textoidl("\Phi"), charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, 0.28, '|', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, 1.5, textoidl("\Phi"), charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, max(phi_horizon(where(wavelength ge wavelength_phi))), '|', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, 0.00045, textoidl("\Phi_R"), charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; xyouts, wavelength_phi, 0.00025, '|', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
 oplot, wavelength(where((wavelength ge wavelength_LAT_low) and (wavelength le wavelength_LAT_high))), rp*wavelength(where((wavelength ge wavelength_LAT_low) and (wavelength le wavelength_LAT_high)))^rho, color=0
 oplot, wavelength(where((wavelength ge wavelength_LAT_low) and (wavelength le wavelength_LAT_high))), rp*wavelength(where((wavelength ge wavelength_LAT_low) and (wavelength le wavelength_LAT_high)))^rho + theta_dif(where((wavelength ge wavelength_LAT_low) and (wavelength le wavelength_LAT_high))), color=0
 ; oplot, wavelength(where(wavelength gt wavelength_GBM_low and wavelength lt wavelength_GBM_high)), replicate(limit_GBM/60./60.*180./!pi, n_elements(wavelength(where(wavelength gt wavelength_GBM_low and wavelength lt wavelength_GBM_high)))), linestyle=3, color=0
; oplot, [wavelength_10Gev, wavelength_10Gev], [theta_low, 2.*!pi], linestyle=1, color=0
; oplot, [wavelength_100Gev, wavelength_100Gev], [theta_low, 2.*!pi], linestyle=1, color=0
;endif

 ; the LAT PSF
; oplot, wavelength(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf le horizon_LAT)), LAT_psf(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf le horizon_LAT)), linestyle=3, color=0
; if display eq 'wide' then xyouts, 1.25*wavelength_LAT_low, 1.25*LAT_psf(max(where(wavelength le 1.25*wavelength_LAT_low))) , 'PSF', color=0, charsize=charsize_label, charthick=charthick_out
; if display eq 'both' then xyouts, 5.*wavelength_phi, 1.05*LAT_psf(max(where(wavelength le 1.05*wavelength_LAT_low))) , 'PSF', color=0, charsize=charsize_label, charthick=charthick_out
; if display eq 'both' then xyouts, 20.*wavelength_phi, 1.05*LAT_psf(max(where(wavelength le 1.05*wavelength_LAT_low))), '|', charsize=charsize_label, orientation=90., charthick=charthick_out, font=-1, alignment=1., color=0
; ; and LAT PSF rescaled
; oplot, wavelength(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf_scaling*LAT_psf le horizon_LAT)), LAT_psf_scaling*LAT_psf(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf_scaling*LAT_psf le horizon_LAT)), linestyle=3, color=0
 ; rescaled by theta
 oplot, wavelength(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf le horizon_LAT)), theta/min(LAT_psf(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf le horizon_LAT)))*LAT_psf(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high and LAT_psf le horizon_LAT)), linestyle=3, color=0
 if display eq 'wide' or  display eq 'both' then xyouts, 1.25*wavelength_LAT_low, 1.25*theta, 'PSF', color=0, charsize=charsize_label, charthick=charthick_out
 if display eq 'wide' or display eq 'both' then xyouts, 4.*wavelength_LAT_low, theta, '|', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=1., color=0

; ; and LAT PSF recaled from horizon to theta
; oplot, wavelength(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high)), theta/horizon*LAT_psf(where(wavelength ge wavelength_LAT_low and wavelength le wavelength_LAT_high)), linestyle=3, color=0

 ; and the "halo"
; if display eq 'wide' then xyouts, 1.25*wavelength_LAT_low, 35.*halo, 'Halo', color=0, charsize=charsize_label, charthick=charthick_out
 if display eq 'both' then xyouts, 5.*wavelength_phi, 27.5*halo , 'Halo', color=0, charsize=charsize_label, charthick=charthick_out
 if display eq 'both' then xyouts, 20.*wavelength_phi, 27.5*halo, '|', charsize=charsize_label, orientation=90., charthick=charthick_out, font=-1, alignment=1., color=0

; angular diameters
if display eq 'xray' then begin
; oplot, [wavelength_low, wavelength_high], [10.*conversion*S, 10.*conversion*S], linestyle=2, color=0 ; radians, 10 Mpc
; xyouts, 0.2*wavelength_high, 0.75*10.*conversion*S, '10 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [5.*conversion*S, 5.*conversion*S], linestyle=2, color=0 ; radians, 5 Mpc
; xyouts, 0.2*wavelength_high, 0.75*5.*conversion*S, '5 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [2.*conversion*S, 2.*conversion*S], linestyle=2, color=0 ; radians, 2 Mpc
; xyouts, 0.2*wavelength_high, 0.75*2.*conversion*S, '2 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [1.*conversion*S, 1.*conversion*S], linestyle=2, color=0 ; radians, 1 Mpc
; xyouts, 0.2*wavelength_high, 0.75*1.*conversion*S, '1 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.5*conversion*S, 0.5*conversion*S], linestyle=2, color=0 ; radians, 500 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.5*conversion*S, '500 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.2*conversion*S, 0.2*conversion*S], linestyle=2, color=0 ; radians, 200 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.2*conversion*S, '200 kpc', color=0, charsize=charsize_label, charthick=charthick_out
endif
if display eq 'gamma' then begin
; oplot, [wavelength_low, wavelength_high], [10.*conversion*S, 10.*conversion*S], linestyle=2, color=0 ; radians, 10 Mpc
; xyouts, 0.2*wavelength_high, 0.75*10.*conversion*S, '10 Mpc', color=0, charsize=charsize,_label charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [5.*conversion*S, 5.*conversion*S], linestyle=2, color=0 ; radians, 5 Mpc
; xyouts, 0.2*wavelength_high, 0.75*5.*conversion*S, '5 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [2.*conversion*S, 2.*conversion*S], linestyle=2, color=0 ; radians, 2 Mpc
; xyouts, 0.2*wavelength_high, 0.75*2.*conversion*S, '2 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [1.*conversion*S, 1.*conversion*S], linestyle=2, color=0 ; radians, 1 Mpc
; xyouts, 0.2*wavelength_high, 0.75*1.*conversion*S, '1 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.5*conversion*S, 0.5*conversion*S], linestyle=2, color=0 ; radians, 500 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.5*conversion*S, '500 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.25*conversion*S, 0.25*conversion*S], linestyle=2, color=0 ; radians, 250 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.25*conversion*S, '250 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.2*conversion*S, 0.2*conversion*S], linestyle=2, color=0 ; radians, 200 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.2*conversion*S, '200 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.1*conversion*S, 0.1*conversion*S], linestyle=2, color=0 ; radians, 100 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.1*conversion*S, '100 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.05*conversion*S, 0.05*conversion*S], linestyle=2, color=0 ; radians, 50 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.05*conversion*S, '50 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.025*conversion*S, 0.025*conversion*S], linestyle=2, color=0 ; radians, 25 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.025*conversion*S, '25 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.01*conversion*S, 0.01*conversion*S], linestyle=2, color=0 ; radians, 10 kpc
; xyouts, 0.2*wavelength_high, 0.75*0.01*conversion*S, '10 kpc', color=0, charsize=charsize_label, charthick=charthick_out
endif
if display eq 'wide' then begin
; oplot, [wavelength_low, wavelength_high], [100.*conversion*S, 100.*conversion*S], linestyle=2, color=0 ; radians, 100 Mpc
; xyouts, wavelength_res, 0.6*100.*conversion*S, '100 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [10.*conversion*S, 10.*conversion*S], linestyle=2, color=0 ; radians, 10 Mpc
; xyouts, wavelength_res, 0.6*10.*conversion*S, '10 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
 oplot, [wavelength_low, wavelength_high], [1.*conversion*S, 1.*conversion*S], linestyle=2, color=0 ; radians, 1 Mpc
 xyouts, wavelength_res, 0.6*1.*conversion*S, '1 Mpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.2*conversion*S, 0.2*conversion*S], linestyle=2, color=0 ; radians, 
; xyouts, wavelength_res, 0.6*0.2*conversion*S, '200 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.1*conversion*S, 0.1*conversion*S], linestyle=2, color=0 ; radians, 
; xyouts, wavelength_res, 0.6*0.1*conversion*S, '100 kpc', color=0, charsize=charsize_label, charthick=charthick_out
 oplot, [wavelength_low, wavelength_high], [0.05*conversion*S, 0.05*conversion*S], linestyle=2, color=0 ; radians, 
 xyouts, wavelength_res, 0.6*0.05*conversion*S, '50 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.01*conversion*S, 0.01*conversion*S], linestyle=2, color=0 ; radians, 
; xyouts, wavelength_res, 0.6*0.01*conversion*S, '10 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.001*conversion*S, 0.001*conversion*S], linestyle=2, color=0 ; radians, 
; xyouts, wavelength_res, 0.6*0.001*conversion*S, '1 kpc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.2*0.001*conversion*S, 0.2*0.001*conversion*S], linestyle=2, color=0 ; radians, 
; xyouts, wavelength_res, 0.6*0.2*0.001*conversion*S, '200 pc', color=0, charsize=charsize_label, charthick=charthick_out
; oplot, [wavelength_low, wavelength_high], [0.1*0.001*conversion*S, 0.1*0.001*conversion*S], linestyle=2, color=0 ; radians, 
; xyouts, wavelength_res, 0.6*0.1*0.001*conversion*S, '100 pc', color=0, charsize=charsize_label, charthick=charthick_out
 oplot, [wavelength_low, wavelength_high], [0.05*0.001*conversion*S, 0.05*0.001*conversion*S], linestyle=2, color=0 ; radians, 
 xyouts, wavelength_res, 0.6*0.05*0.001*conversion*S, '50 pc', color=0, charsize=charsize_label, charthick=charthick_out
endif

; instrument fields-of-view
;; EeV to TeV
;xyouts, 1.25*wavelength_TeV_low, 0.5*horizon, 'EeV-TeV', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0, color=0
;oplot, [wavelength_TeV_low, wavelength_TeV_low], [resolution_TeV_low, horizon], thick=1, linestyle=0, color=0
;oplot, [wavelength_TeV_high, wavelength_TeV_high], [resolution_TeV_low, horizon], thick=1, linestyle=0, color=0
;oplot, [wavelength_TeV_low, wavelength_TeV_high], [resolution_TeV_low, resolution_TeV_low], thick=1, linestyle=0, color=0
;oplot, [wavelength_TeV_low, wavelength_TeV_high], [horizon, horizon], thick=1, linestyle=0, color=0
; Carpet-2
if display eq 'wide' then xyouts, wavelength_Carpet2, resolution_Carpet2, 'Carpet-2', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; LHAASO
if display eq 'wide' then xyouts, wavelength_LHAASO, resolution_LHAASO, 'LHAASO', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; TeV
if display eq 'wide' then xyouts, wavelength_TeV, 0.5*resolution_TeV, 'TeV', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; Fermi
if display eq 'wide' then xyouts, 1.25*wavelength_LAT_low, 2.5*horizon_LAT, 'Fermi', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;xyouts, 1.25*wavelength_LAT_low, 2.5*horizon_LAT, 'Fermi', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; LAT
if display eq 'wide' then xyouts, 1.25*wavelength_LAT_low, 1.25*horizon_LAT, 'LAT', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'both' then xyouts, 1.25*wavelength_LAT_low, 1.3*horizon_LAT, 'LAT', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, [wavelength_LAT_low, wavelength_LAT_low], [rp*wavelength_LAT_low^rho, horizon_LAT], thick=1, linestyle=0, color=0
oplot, [wavelength_LAT_high, wavelength_LAT_high], [rp*wavelength_LAT_high^rho, horizon_LAT], thick=1, linestyle=0, color=0
oplot, [wavelength_LAT_low, wavelength_LAT_high], [rp*wavelength_LAT_low^rho, rp*wavelength_LAT_high^rho], thick=1, linestyle=0, color=0
oplot, [wavelength_LAT_low, wavelength_LAT_high], [horizon_LAT, horizon_LAT], thick=1, linestyle=0, color=0
; GBM
if display eq 'wide' then xyouts, 0.1*wavelength_GBM_high, 1.25*horizon_GBM, 'GBM', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'xray' then xyouts, 0.15*wavelength_GBM_high, 1.25*horizon_GBM, 'GBM', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
if display eq 'both' then xyouts, 0.2*wavelength_GBM_high, 1.3*horizon_GBM, 'GBM', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, [wavelength_GBM_low, wavelength_GBM_low], [resolution_GBM_low, horizon_GBM], thick=1, linestyle=0, color=0
oplot, [wavelength_GBM_high, wavelength_GBM_high], [resolution_GBM_low, horizon_GBM], thick=1, linestyle=0, color=0
oplot, [wavelength_GBM_low, wavelength_GBM_high], [resolution_GBM_low, resolution_GBM_Low], thick=1, linestyle=0, color=0
oplot, [wavelength_GBM_low, wavelength_GBM_high], [horizon_GBM, horizon_GBM], thick=1, linestyle=0, color=0
; Swift
if display eq 'wide' then xyouts, wavelength_BAT_low, 0.5*resolution_BAT_low, 'Swift', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; BAT
if display eq 'wide' then xyouts, wavelength_BAT_low, 0.25*resolution_BAT_low, 'BAT', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, [wavelength_BAT_high, wavelength_BAT_high], [resolution_BAT_low, resolution_BAT_high], thick=1, linestyle=0, color=0
oplot, [wavelength_BAT_low, wavelength_BAT_low], [resolution_BAT_low, resolution_BAT_high], thick=1, linestyle=0, color=0
oplot, [wavelength_BAT_high, wavelength_BAT_low], [resolution_BAT_low, resolution_BAT_low], thick=1, linestyle=0, color=0
oplot, [wavelength_BAT_high, wavelength_BAT_low], [resolution_BAT_high, resolution_BAT_high], thick=1, linestyle=0, color=0
; XRT
if display eq 'wide' then xyouts, wavelength_XRT_low, 0.5*resolution_XRT_low, 'XRT', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, [wavelength_XRT_high, wavelength_XRT_high], [resolution_XRT_low, resolution_XRT_high], thick=1, linestyle=0, color=0
oplot, [wavelength_XRT_low, wavelength_XRT_low], [resolution_XRT_low, resolution_XRT_high], thick=1, linestyle=0, color=0
oplot, [wavelength_XRT_high, wavelength_XRT_low], [resolution_XRT_low, resolution_XRT_low], thick=1, linestyle=0, color=0
oplot, [wavelength_XRT_high, wavelength_XRT_low], [resolution_XRT_high, resolution_XRT_high], thick=1, linestyle=0, color=0
; UVOT
if display eq 'wide' then xyouts, wavelength_UVOT_low, 0.5*resolution_UVOT_low, 'UVOT', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
oplot, [wavelength_UVOT_high, wavelength_UVOT_high], [resolution_UVOT_low, resolution_UVOT_high], thick=1, linestyle=0, color=0
oplot, [wavelength_UVOT_low, wavelength_UVOT_low], [resolution_UVOT_low, resolution_UVOT_high], thick=1, linestyle=0, color=0
oplot, [wavelength_UVOT_high, wavelength_UVOT_low], [resolution_UVOT_low, resolution_UVOT_low], thick=1, linestyle=0, color=0
oplot, [wavelength_UVOT_high, wavelength_UVOT_low], [resolution_UVOT_high, resolution_UVOT_high], thick=1, linestyle=0, color=0
; NICER
if display eq 'wide' then xyouts, wavelength_NICER, 2.*resolution_NICER, 'NICER', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; IXPE
if display eq 'wide' then xyouts, wavelength_IXPE, 0.5*resolution_IXPE, 'IXPE/MAXI', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; ART-XC
if display eq 'wide' then xyouts, wavelength_ARTXC, 2.*resolution_ARTXC, 'ART-XC', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
; KW
if display eq 'wide' then xyouts, wavelength_KW, 2.*resolution_KW, 'Konus-WIND', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0

;; HST
;xyouts, 1.25*wavelength_HST_low, 0.5*resolution_HST_low, 'HST', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;oplot, [wavelength_HST_high, wavelength_HST_high], [resolution_HST_low, resolution_HST_high], thick=1, linestyle=0, color=0
;oplot, [wavelength_HST_low, wavelength_HST_low], [resolution_HST_low, resolution_HST_high], thick=1, linestyle=0, color=0
;oplot, [wavelength_HST_high, wavelength_HST_low], [resolution_HST_low, resolution_HST_low], thick=1, linestyle=0, color=0
;oplot, [wavelength_HST_high, wavelength_HST_low], [resolution_HST_high, resolution_HST_high], thick=1, linestyle=0, color=0
;; JWST
;xyouts, 1.25*wavelength_JWST_low, 0.5*resolution_JWST_low, 'JWST', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;oplot, [wavelength_JWST_high, wavelength_JWST_high], [resolution_JWST_low, resolution_JWST_high], thick=1, linestyle=0, color=0
;oplot, [wavelength_JWST_low, wavelength_JWST_low], [resolution_JWST_low, resolution_JWST_high], thick=1, linestyle=0, color=0
;oplot, [wavelength_JWST_high, wavelength_JWST_low], [resolution_JWST_low, resolution_JWST_low], thick=1, linestyle=0, color=0
;oplot, [wavelength_JWST_high, wavelength_JWST_low], [resolution_JWST_high, resolution_JWST_high], thick=1, linestyle=0, color=0
; Ground
;if display eq 'wide' then xyouts, 0.35*wavelength_ground_low, 2.*resolution_ground_low, 'Ground', charsize=charsize_label, orientation=0., charthick=charthick_out, font=-1, alignment=0., color=0
;oplot, [wavelength_ground_high, wavelength_ground_high], [resolution_ground_low, resolution_ground_high], thick=1, linestyle=0, color=0
;oplot, [wavelength_ground_low, wavelength_ground_low], [resolution_ground_low, resolution_ground_high], thick=1, linestyle=0, color=0
;oplot, [wavelength_ground_high, wavelength_ground_low], [resolution_ground_low, resolution_ground_low], thick=1, linestyle=0, color=0
;oplot, [wavelength_ground_high, wavelength_ground_low], [resolution_ground_high, resolution_ground_high], thick=1, linestyle=0, color=0

; find locus of LAT pointsource average points
LAT_pointsource_wavelength_mean = mean(LAT_pointsource_wavelength, /nan)
LAT_pointsource_wavelength_stddev = stddev(LAT_pointsource_wavelength, /nan)
LAT_pointsource_mean = mean(LAT_pointsource, /nan)
LAT_pointsource_stddev = stddev(LAT_pointsource, /nan)

; and a scaling
LAT_psf_scaling = LAT_pointsource_mean/LAT_latest_angle_mean ; LAT_latest_angle_mean/LAT_pointsource_mean
print, 'LAT roll angle to point-source resolution scaling: ', LAT_psf_scaling

;; or, rescaling by the horizon angle at that energy
;LAT_pointsource_rescaled = LAT_pointsource ; just recapturing the original data, to test no rescaling
;if rescale_LAT eq 'yes' then LAT_pointsource_rescaled = LAT_pointsource_rescaled/LAT_psf_scaling

; plot data
if show_data eq 'yes' then begin
;if display eq 'gamma' or display eq 'xray' then begin
;if display eq 'wide' or display eq 'gamma' or display eq 'xray' then begin

; plot UVOT data
plotsym, 4, 2., /fill, color=100
oplot, UVOT_wavelength, UVOT_resolution, psym=8, color=0
;plotsym, 4, 2., /fill, color=0
;oplot, UVOT_wavelength(where(Swift_z ge z_cutoff)), UVOT_resolution(where(Swift_z ge z_cutoff)), psym=8, color=0
; and average locus
plotsym, 4, 4., /fill, color=150
oplot, [UVOT_wavelength_mean, UVOT_wavelength_mean], [UVOT_resolution_mean, UVOT_resolution_mean], psym=8, color=0
plotsym, 4, 3., /fill, color=0
oplot, [UVOT_wavelength_mean, UVOT_wavelength_mean], [UVOT_resolution_mean, UVOT_resolution_mean], psym=8, color=0

; plot XRT data
plotsym, 4, 2., /fill, color=0
oplot, XRT_wavelength, XRT_resolution, psym=8, color=0
;plotsym, 4, 2., /fill, color=0
;oplot, XRT_wavelength(where(Swift_z ge z_cutoff)), XRT_resolution(where(Swift_z ge z_cutoff)), psym=8, color=0
; and average locus
plotsym, 4, 4., /fill, color=150
oplot, [XRT_wavelength_mean, XRT_wavelength_mean], [XRT_resolution_mean, XRT_resolution_mean], psym=8, color=0
plotsym, 4, 3., /fill, color=0
oplot, [XRT_wavelength_mean, XRT_wavelength_mean], [XRT_resolution_mean, XRT_resolution_mean], psym=8, color=0

; GBM data, as of latest
loadct, 0, /silent
; first, the averaged data
;plotsym, 0, 2., /fill, color=100  ; grey, filled circles
;plotsym, 0, 2., thick=2, color=0  ; open circles
;oplot, GBM_latest_wavelength_average, GBM_latest_radius_hold, psym=8, color=0
;oplot, GBM_latest_wavelength_lowest, GBM_latest_radius_hold, psym=8, color=0
;; next, all data at the selected energy choice
;plotsym, 0, 2., thick=3, color=100  ; open circles
;;plotsym, 0, 2., /fill, color=100 ; filled circles
;oplot, GBM_latest_wavelength_hold, GBM_latest_radius_hold, psym=8, color=0
;; now, just those within the allowable resolution limit and the selected energy choice
;plotsym, 0, 1., /fill, color=0 ; filled circles
;oplot, GBM_latest_wavelength, GBM_latest_radius, psym=8, color=0
; or, instead as arrows
if show_errors eq 'yes' then begin
 for i = 0, n_elements(GBM_latest_wavelength) - 2 do begin
  arrow, GBM_latest_wavelength(i), GBM_latest_radius(i), GBM_latest_wavelength_average(i), GBM_latest_radius(i), color=0, thick=2, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
 endfor
endif
; again, all data at the selected energy choice
plotsym, 0, 2., thick=3, color=100  ; open circles
;plotsym, 0, 1., /fill, color=0 ; filled circles
oplot, GBM_latest_wavelength_hold, GBM_latest_radius_hold, psym=8, color=0
; last, just those within the allowable resolution limit and the selected energy choice
plotsym, 0, 1., /fill, color=0 ; filled circles
oplot, GBM_latest_wavelength, GBM_latest_radius, psym=8, color=0

; plot BAT data
plotsym, 4, 2., /fill, color=0
oplot, BAT_wavelength, BAT_resolution, psym=8, color=0
;plotsym, 4, 2., /fill, color=0
;oplot, BAT_wavelength(where(Swift_z ge z_cutoff)), BAT_resolution(where(Swift_z ge z_cutoff)), psym=8, color=0
; and average locus
plotsym, 4, 4., /fill, color=150
oplot, [BAT_wavelength_mean, BAT_wavelength_mean], [BAT_resolution_mean, BAT_resolution_mean], psym=8, color=0
errplot, [BAT_wavelength_mean, BAT_wavelength_mean], [BAT_resolution_mean, BAT_resolution_mean]-0.5*BAT_resolution_stddev, [BAT_resolution_mean, BAT_resolution_mean]+0.5*BAT_resolution_stddev, width=0.015, thick=7, color=150
plotsym, 4, 3., /fill, color=0
oplot, [BAT_wavelength_mean, BAT_wavelength_mean], [BAT_resolution_mean, BAT_resolution_mean], psym=8, color=0
errplot, [BAT_wavelength_mean, BAT_wavelength_mean], [BAT_resolution_mean, BAT_resolution_mean]-0.5*BAT_resolution_stddev, [BAT_resolution_mean, BAT_resolution_mean]+0.5*BAT_resolution_stddev, thick=3, color=0

; latest LAT roll-angle data, which may be an average of roll and zenith angles, and LAT 2FGL resolution data
; limiting angle, likely the zenith angle
;plotsym, 5, 2., thick=2, color=75
plotsym, 5, 2., /fill, color=75
oplot, LAT_latest_wavelength, LAT_latest_limit, psym=8, color=75
; angle
plotsym, 5, 2., /fill, color=0 ; 50
oplot, LAT_latest_wavelength, LAT_latest_angle, psym=8, color=0
;plotsym, 5, 1., color=255
;oplot, LAT_latest_wavelength(where(LAT_latest_redshift ge z_cutoff)) , LAT_latest_angle(where(LAT_latest_redshift ge z_cutoff)), psym=8, color=0
;if show_errors eq 'yes' then errplot, LAT_latest_wavelength, LAT_latest_angle_low, LAT_latest_angle_high, color=0, width=0. ; whiskers for high and low limits
;if show_errors eq 'yes' then errplot, LAT_latest_wavelength, LAT_latest_angle-LAT_latest_angle_psf, LAT_latest_angle+LAT_latest_angle_psf, color=0, width=0.005
;if show_errors eq 'yes' then errplot, LAT_latest_wavelength, LAT_latest_angle-0.5*LAT_latest_angle_psf, LAT_latest_angle+0.5*LAT_latest_angle_psf, color=0, width=0.005
;if show_errors eq 'yes' then errplot, LAT_latest_wavelength, LAT_latest_angle-0.5*LAT_latest_angle_psf, LAT_latest_angle+0.5*LAT_latest_angle_psf, thick=2, color=0, width=0.005

;; LAT resolutions
;plotsym, 4, 2., /fill, color=50
;oplot, LAT_latest_wavelength, LAT_latest_resolution, psym=8, color=0
;;oplot, LAT_latest_wavelength, LAT_latest_error, psym=8, color=0
;;oplot, LAT_latest_wavelength, LAT_latest_distance, psym=8, color=0

; plot the LAT pointsource data, possibly rescaled, if desired
;if display eq 'gamma' then begin
;plotsym, 8, 0.5, /fill, color=255
plotsym, 8, 1., /fill, color=0
;oplot, LAT_pointsource_wavelength, LAT_pointsource_rescaled, psym=8, color=0
plotsym, 8, 0.5, /fill, color=200 ; 255
;oplot, LAT_pointsource_wavelength, LAT_pointsource_rescaled, psym=8, color=0
;endif

; plot TeV data
; resolutions
plotsym, 4, 2., /fill, color=150
oplot, TeV_wavelength, TeV_resolution, psym=8, color=0
plotsym, 4, 2., /fill, color=0
oplot, [TeV_wavelength(where(TeV_z ge z_cutoff)), TeV_wavelength(where(TeV_z ge z_cutoff))], [TeV_resolution(where(TeV_z ge z_cutoff)), TeV_resolution(where(TeV_z ge z_cutoff))], psym=8, color=0
;errplot, TeV_wavelength, TeV_resolution-0.5*rp*TeV_wavelength^rho, TeV_resolution+0.5*rp*TeV_wavelength^rho, color=0
oplot, TeV_wavelength(where(TeV_z ge z_cutoff)), TeV_resolution(where(TeV_z ge z_cutoff)), psym=8, color=0, thick=2
;errplot, TeV_wavelength(where(TeV_z ge z_cutoff)), TeV_resolution(where(TeV_z ge z_cutoff))-0.5*rp*TeV_wavelength(where(TeV_z ge z_cutoff))^rho, TeV_resolution(where(TeV_z ge z_cutoff))+0.5*rp*TeV_wavelength(where(TeV_z ge z_cutoff))^rho, psym=8, color=0, thick=2

; plot the scaled TeV angles, noting that this is generated from the resolution data, simply by scaling to the horizon
; angles
if show_scaling eq 'yes' then begin
 plotsym, 5, 1.5, thick=2, color=100
 oplot, TeV_wavelength, TeV_angle, psym=8, color=0
 plotsym, 5, 1.5, thick=2, color=0
 oplot, TeV_wavelength(where(TeV_z ge z_cutoff)), TeV_angle(where(TeV_z ge z_cutoff)), psym=8, color=0
 oplot, [TeV_wavelength(where(TeV_z ge z_cutoff)), TeV_wavelength(where(TeV_z ge z_cutoff))], [TeV_angle(where(TeV_z ge z_cutoff)), TeV_angle(where(TeV_z ge z_cutoff))], psym=8,   color=0, thick=2
endif

; replot contours
if show_contours eq 'yes' then begin
loadct, 0, /silent ; greyscale
;loadct, colour_table, /silent ; rainbow, blue to red
;contour, densities_contour, wavelengths, resolutions, nlevels=contours, color=contours_color, thick=2, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
;contour, densities_contour, wavelengths, resolutions, level=contours_level, color=100, thick=3, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
contour, densities_contour, wavelengths, resolutions, level=contours_level, color=255, thick=3, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
;contour, densities_contour, wavelengths, resolutions, level=contours_peak, color=255, thick=3, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
;contour, densities_contour, wavelengths, resolutions, level=contours_level, color=0, thick=1, /xlog, /ylog, xstyle=1, xrange=[wavelength_low, wavelength_high], ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot, charthick=charthick, /overplot
loadct, 0, /silent ; greyscaleoadct, 0, /silent ; greyscale
endif

; and GBM data in colour, if redshifts are available
for i = 0, n_elements(GBM_latest_wavelength) - 1 do begin
 if GBM_latest_redshift(i) gt 0. then begin
 loadct, 0, /silent ; greyscale
; if show_errors eq 'yes' then errplot, [GBM_latest_wavelength(i), GBM_latest_wavelength(i)], [GBM_latest_distance_low(i), GBM_latest_distance_low(i)], [GBM_latest_distance_high(i), GBM_latest_distance_high(i)], color=0, thick=2, width=0.005 ; whiskers for high and low limits
; loadct, 34, /silent ; rainbow, blue to red
 loadct, colour_table, /silent ; rainbow, blue to red
 ; scale color by redshift
; print, GBM_latest_name(i), GBM_latest_wavelength(i), GBM_latest_radius(i), GBM_latest_redshift(i)
 colour = 254*float(GBM_latest_redshift(i))/max(GBM_latest_redshift)
; if colour eq 0 then colour = 2 ; if no redshift known, this is set as zero
 plotsym, 0, 2., /fill, color=colour
; oplot, [GBM_latest_wavelength(i), GBM_latest_wavelength(i)], [GBM_latest_radius(i), GBM_latest_radius(i)], psym=8, color=0
 oplot, [GBM_latest_wavelength(i), GBM_latest_wavelength(i)], [GBM_latest_distance(i), GBM_latest_distance(i)], psym=8, color=0
 loadct, 0, /silent ; greyscale
 plotsym, 0, 2., color=0
; oplot, [GBM_latest_wavelength(i), GBM_latest_wavelength(i)], [GBM_latest_radius(i), GBM_latest_radius(i)], psym=8, color=0
 oplot, [GBM_latest_wavelength(i), GBM_latest_wavelength(i)], [GBM_latest_distance(i), GBM_latest_distance(i)], psym=8, color=0
 for j = 0, n_elements(important)-1 do begin
  if important(j) eq GBM_latest_name(i) and show_labels eq 'yes' then xyouts, GBM_latest_wavelength(i), GBM_latest_distance(i), string(important(j)) + ', ' + strmid(strtrim(string(GBM_latest_redshift(i)), 2), 0, 4), charsize=0.5*charsize, orientation=90, align=-0.1, color=0 ; write out in full, just the important ones
 endfor
 endif
endfor
; and their average locus
plotsym, 0, 3.5, /fill, color=150
oplot, [GBM_latest_wavelength_mean, GBM_latest_wavelength_mean], [GBM_latest_radius_mean, GBM_latest_radius_mean], psym=8, color=0
errplot, [GBM_latest_wavelength_mean, GBM_latest_wavelength_mean], [GBM_latest_radius_mean, GBM_latest_radius_mean]-0.5*GBM_latest_radius_stddev, [GBM_latest_radius_mean, GBM_latest_radius_mean]+0.5*GBM_latest_radius_stddev, width=0.015, thick=7, color=150
plotsym, 0, 2.5, /fill, color=0
oplot, [GBM_latest_wavelength_mean, GBM_latest_wavelength_mean], [GBM_latest_radius_mean, GBM_latest_radius_mean], psym=8, color=0
errplot, [GBM_latest_wavelength_mean, GBM_latest_wavelength_mean], [GBM_latest_radius_mean, GBM_latest_radius_mean]-0.5*GBM_latest_radius_stddev, [GBM_latest_radius_mean, GBM_latest_radius_mean]+0.5*GBM_latest_radius_stddev, thick=3, color=0
loadct, 0, /silent ; back to greyscale

; LAT pointsource data in colour, if redshifts available
;if display eq 'gamma' then begin
for i = 0, n_elements(LAT_pointsource_wavelength) - 1 do begin
 if LAT_10yr_redshift(i) gt 0. then begin
; loadct, 34, /silent ; rainbow, blue to red
 loadct, colour_table, /silent ; rainbow, blue to red
 ; scale color by redshift
; colour = 254*float(LAT_10yr_redshift(i))/max(LAT_10yr_redshift, /nan)
; colour = 254*float(LAT_10yr_redshift(i))/z_max ; instead, scaled by the maximum redshift of the GRB sample
 colour = 254*float(LAT_10yr_redshift(i))/z_high ; instead, scaled by the high value, consistent with model
; if colour eq 0 then colour = 2 ; if no redshift known, this is set as zero
 plotsym, 8, 1.5, /fill, color=colour
 oplot, [LAT_pointsource_wavelength(i), LAT_pointsource_wavelength(i)] , [LAT_pointsource_rescaled(i), LAT_pointsource_rescaled(i)], psym=8, color=0
 loadct, 0, /silent ; greyscale
 plotsym, 8, 1.5, color=0
 oplot, [LAT_pointsource_wavelength(i), LAT_pointsource_wavelength(i)], [LAT_pointsource_rescaled(i), LAT_pointsource_rescaled(i)], psym=8, color=0
 endif
endfor
;endif ; if this is the gamma plot
; and their average locus
plotsym, 8, 3.5, /fill, color=150
oplot, [LAT_pointsource_wavelength_mean, LAT_pointsource_wavelength_mean], [LAT_pointsource_mean, LAT_pointsource_mean], psym=8, color=0
errplot, [LAT_pointsource_wavelength_mean, LAT_pointsource_wavelength_mean], [LAT_pointsource_mean, LAT_pointsource_mean]-0.5*LAT_pointsource_stddev, [LAT_pointsource_mean, LAT_pointsource_mean]+0.5*LAT_pointsource_stddev, width=0.015, thick=7, color=150
plotsym, 8, 2.5, /fill, color=0
oplot, [LAT_pointsource_wavelength_mean, LAT_pointsource_wavelength_mean], [LAT_pointsource_mean, LAT_pointsource_mean], psym=8, color=0
errplot, [LAT_pointsource_wavelength_mean, LAT_pointsource_wavelength_mean], [LAT_pointsource_mean, LAT_pointsource_mean]-0.5*LAT_pointsource_stddev, [LAT_pointsource_mean, LAT_pointsource_mean]+0.5*LAT_pointsource_stddev, thick=3, color=0

; replot LAT resolutions
if display ne 'gamma' then begin
plotsym, 4, 2., /fill, color=50
oplot, LAT_latest_wavelength, LAT_latest_resolution, psym=8, color=0
;oplot, LAT_latest_wavelength, LAT_latest_error, psym=8, color=0
;oplot, LAT_latest_wavelength, LAT_latest_distance, psym=8, color=0
endif

; and LAT data in colour, if redshift available
if display ne 'gamma' then begin
for i = 0, n_elements(LAT_latest_wavelength) - 1 do begin
 if LAT_latest_redshift(i) gt 0. then begin
; loadct, 34, /silent ; rainbow, blue to red
 loadct, colour_table, /silent ; rainbow, blue to red
 ; scale color by redshift
; print, LAT_latest_name(i), LAT_latest_wavelength(i), LAT_latest_angle(i), LAT_latest_redshift(i)
 colour = 254*float(LAT_latest_redshift(i))/max(LAT_latest_redshift)
; if colour ne 0 then begin ; if no redshift known, this is set as zero
 plotsym, 5, 2.5, /fill, color=colour
 oplot, [LAT_latest_wavelength(i), LAT_latest_wavelength(i)], [LAT_latest_angle(i), LAT_latest_angle(i)], psym=8, color=0
 plotsym, 4, 2.5, /fill, color=colour 
 oplot, [LAT_latest_wavelength(i), LAT_latest_wavelength(i)], [LAT_latest_resolution(i), LAT_latest_resolution(i)], psym=8, color=0
 loadct, 0, /silent ; greyscale
 plotsym, 5, 2.5, color=0
 oplot, [LAT_latest_wavelength(i), LAT_latest_wavelength(i)], [LAT_latest_angle(i), LAT_latest_angle(i)], psym=8, color=0
 plotsym, 4, 2.5, color=0
 oplot, [LAT_latest_wavelength(i), LAT_latest_wavelength(i)], [LAT_latest_resolution(i), LAT_latest_resolution(i)], psym=8, color=0
 for j = 0, n_elements(important)-1 do begin
  if important(j) eq LAT_latest_name(i) and show_labels eq 'yes' then xyouts, LAT_latest_wavelength(i), LAT_latest_angle(i), string(important(j)) + ', ' + strmid(strtrim(string(LAT_latest_redshift(i)), 2), 0, 4), charsize=0.5*charsize, orientation=90, align=-0.1, color=0 ; write out in full, just the important ones
  if important(j) eq LAT_latest_name(i) and show_labels eq 'yes' then xyouts, LAT_latest_wavelength(i), LAT_latest_resolution(i), string(important(j)) + ', ' + strmid(strtrim(string(LAT_latest_redshift(i)), 2), 0, 4), charsize=0.5*charsize, orientation=90, align=-0.1, color=0 ; write out in full, just the important ones
 endfor
 endif
endfor
loadct, 0, /silent ; back to greyscale
; and their average locus
plotsym, 5, 4., /fill, color=150
oplot, [LAT_latest_wavelength_mean, LAT_latest_wavelength_mean], [LAT_latest_angle_mean, LAT_latest_angle_mean], psym=8, color=0
errplot, [LAT_latest_wavelength_mean, LAT_latest_wavelength_mean], [LAT_latest_angle_mean, LAT_latest_angle_mean]-0.5*LAT_latest_angle_stddev, [LAT_latest_angle_mean, LAT_latest_angle_mean]+0.5*LAT_latest_angle_stddev, width=0.015, thick=7, color=150
plotsym, 5, 3., /fill, color=0
oplot, [LAT_latest_wavelength_mean, LAT_latest_wavelength_mean], [LAT_latest_angle_mean, LAT_latest_angle_mean], psym=8, color=0
errplot, [LAT_latest_wavelength_mean, LAT_latest_wavelength_mean], [LAT_latest_angle_mean, LAT_latest_angle_mean]-0.5*LAT_latest_angle_stddev, [LAT_latest_angle_mean, LAT_latest_angle_mean]+0.5*LAT_latest_angle_stddev, thick=3, color=0
endif

;; TeVCat data, as of 15 June 2020
;plotsym, 6, 2., thick=1, color=0 ; just limits, plotted as arrows pointing to higher energy
;oplot, TeV_latest_wavelength, TeV_latest_size, psym=8, color=0

;endif ; depending on what data are plotted
endif ; if showing the data

; and special datapoint
print, 'Plotting special object: ', special_name

; Carpet-2
if display eq 'wide' then begin
;plotsym, 3, 3., /fill, color=255 ; a star
plotsym, 5, 4., /fill, color=255
oplot, [Carpet2_special_wavelength, Carpet2_special_wavelength], [Carpet2_special_angle, Carpet2_special_angle], psym=8, color=0
; connect to the lowest-possible angle, as an arrow
arrow, Carpet2_special_wavelength, Carpet2_special_angle, Carpet2_special_wavelength, 1.*Carpet2_special_resolution, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
arrow, Carpet2_special_wavelength, Carpet2_special_angle, Carpet2_special_wavelength, 1.05*Carpet2_special_resolution, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
;plotsym, 3, 2., /fill, color=0 ; a star
plotsym, 5, 3., /fill, color=0
oplot, [Carpet2_special_wavelength, Carpet2_special_wavelength], [Carpet2_special_angle, Carpet2_special_angle], psym=8, color=0
endif

; VHE angle
if display eq 'wide' then begin
plotsym, 5, 4., /fill, color=255
oplot, [VHE_special_wavelength, VHE_special_wavelength], [VHE_special_angle, VHE_special_angle], psym=8, color=0
; connect to the lowest-possible angle, as an arrow
arrow, VHE_special_wavelength, VHE_special_angle, VHE_special_wavelength, 0.45*VHE_special_angle, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
arrow, VHE_special_wavelength, VHE_special_angle, VHE_special_wavelength, 0.5*VHE_special_angle, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
plotsym, 5, 3., /fill, color=0
oplot, [VHE_special_wavelength, VHE_special_wavelength], [VHE_special_angle, VHE_special_angle], psym=8, color=0
endif

; Konus-Wind
plotsym, 5, 4., /fill, color=255
oplot, [KW_special_wavelength, KW_special_wavelength], [KW_special_angle, KW_special_angle], psym=8, color=0
; connect to the lowest-possible angle, as an arrow
arrow, KW_special_wavelength, KW_special_angle, KW_special_wavelength, 0.45*KW_special_angle, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
arrow, KW_special_wavelength, KW_special_angle, KW_special_wavelength, 0.5*KW_special_angle, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
plotsym, 5, 3., /fill, color=0
oplot, [KW_special_wavelength, KW_special_wavelength], [KW_special_angle, KW_special_angle], psym=8, color=0

; ART-XC
plotsym, 4, 4., /fill, color=255
oplot, [ARTXC_special_wavelength, ARTXC_special_wavelength], [ARTXC_special_resolution, ARTXC_special_resolution], psym=8, color=0
; connect to the lowest-possible angle, as an arrow
arrow, ARTXC_special_wavelength, ARTXC_special_resolution, ARTXC_special_wavelength, 0.55*ARTXC_special_angle, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
arrow, ARTXC_special_wavelength, ARTXC_special_resolution, ARTXC_special_wavelength, 0.5*ARTXC_special_angle, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
plotsym, 4, 3., /fill, color=0
oplot, [ARTXC_special_wavelength, ARTXC_special_wavelength], [ARTXC_special_resolution, ARTXC_special_resolution], psym=8, color=0

; TeV resolution
TeV_special_resolution_error = error_bar*TeV_resolution_stddev ; radians
plotsym, 4, 4., /fill, color=255
oplot, [TeV_special_wavelength, TeV_special_wavelength], [TeV_special_resolution, TeV_special_resolution], psym=8, color=0
errplot, [TeV_special_wavelength, TeV_special_wavelength], [TeV_special_resolution, TeV_special_resolution]-0.5*TeV_special_resolution_error, [TeV_special_resolution, TeV_special_resolution]+0.5*TeV_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [TeV_special_wavelength, TeV_special_wavelength], [TeV_special_resolution, TeV_special_resolution], psym=8, color=0
errplot, [TeV_special_wavelength, TeV_special_wavelength], [TeV_special_resolution, TeV_special_resolution]-0.5*TeV_special_resolution_error, [TeV_special_resolution, TeV_special_resolution]+0.5*TeV_special_resolution_error, thick=3, color=0

; Fermi
; LAT roll angle
LAT_special_roll_angle_error = error_bar*LAT_latest_angle_stddev ; radians
plotsym, 5, 4., /fill, color=255
oplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_roll_angle, LAT_special_roll_angle], psym=8, color=0
errplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_roll_angle, LAT_special_roll_angle]-0.5*LAT_special_roll_angle_error, [LAT_special_roll_angle, LAT_special_roll_angle]+0.5*LAT_special_roll_angle_error, width=0.015, thick=7, color=255
plotsym, 5, 3., /fill, color=0
oplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_roll_angle, LAT_special_roll_angle], psym=8, color=0
errplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_roll_angle, LAT_special_roll_angle]-0.5*LAT_special_roll_angle_error, [LAT_special_roll_angle, LAT_special_roll_angle]+0.5*LAT_special_roll_angle_error, thick=3, color=0

; LAT error-radius or resolution
LAT_special_radius_error = error_bar*LAT_pointsource_stddev ; radians
plotsym, 4, 4., /fill, color=255
oplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_radius, LAT_special_radius], psym=8, color=0
errplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_radius, LAT_special_radius]-0.5*LAT_special_radius_error, [LAT_special_radius, LAT_special_radius]+0.5*LAT_special_radius_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_radius, LAT_special_radius], psym=8, color=0
errplot, [LAT_special_wavelength, LAT_special_wavelength], [LAT_special_radius, LAT_special_radius]-0.5*LAT_special_radius_error, [LAT_special_radius, LAT_special_radius]+0.5*LAT_special_radius_error, thick=3, color=0

; GBM error radius
GBM_special_radius_error = error_bar*GBM_latest_radius_stddev ; radians
plotsym, 0, 3.5, /fill, color=255
oplot, [GBM_special_wavelength, GBM_special_wavelength], [GBM_special_radius, GBM_special_radius], psym=8, color=0
; connect to the highest possible energy, as an arrow
arrow, GBM_special_wavelength, GBM_special_radius, 0.95*GBM_special_wavelength_short, GBM_special_radius, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
arrow, GBM_special_wavelength, GBM_special_radius, GBM_special_wavelength_short, GBM_special_radius, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0., fill_background=0, hide=1, /solid, /data
errplot, [GBM_special_wavelength, GBM_special_wavelength], [GBM_special_radius, GBM_special_radius]-0.5*GBM_special_radius_error, [GBM_special_radius, GBM_special_radius]+0.5*GBM_special_radius_error, width=0.015, thick=7, color=255
plotsym, 0, 2.5, /fill, color=0
oplot, [GBM_special_wavelength, GBM_special_wavelength], [GBM_special_radius, GBM_special_radius], psym=8, color=0
errplot, [GBM_special_wavelength, GBM_special_wavelength], [GBM_special_radius, GBM_special_radius]-0.5*GBM_special_radius_error, [GBM_special_radius, GBM_special_radius]+0.5*GBM_special_radius_error, thick=3, color=0

; Swift
; BAT resolution
BAT_special_resolution_error = error_bar*BAT_resolution_stddev
plotsym, 4, 4., /fill, color=255
oplot, [BAT_special_wavelength, BAT_special_wavelength], [BAT_special_resolution, BAT_special_resolution], psym=8, color=0
errplot, [BAT_special_wavelength, BAT_special_wavelength], [BAT_special_resolution, BAT_special_resolution]-0.5*BAT_special_resolution_error, [BAT_special_resolution, BAT_special_resolution]+0.5*BAT_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [BAT_special_wavelength, BAT_special_wavelength], [BAT_special_resolution, BAT_special_resolution], psym=8, color=0
errplot, [BAT_special_wavelength, BAT_special_wavelength], [BAT_special_resolution, BAT_special_resolution]-0.5*BAT_special_resolution_error, [BAT_special_resolution, BAT_special_resolution]+0.5*BAT_special_resolution_error, thick=3, color=0

; XRT resolution
XRT_special_resolution_error = error_bar*XRT_resolution_stddev
plotsym, 4, 4., /fill, color=255
oplot, [XRT_special_wavelength, XRT_special_wavelength], [XRT_special_resolution, XRT_special_resolution], psym=8, color=0
errplot, [XRT_special_wavelength, XRT_special_wavelength], [XRT_special_resolution, XRT_special_resolution]-0.5*XRT_special_resolution_error, [XRT_special_resolution, XRT_special_resolution]+0.5*XRT_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [XRT_special_wavelength, XRT_special_wavelength], [XRT_special_resolution, XRT_special_resolution], psym=8, color=0
errplot, [XRT_special_wavelength, XRT_special_wavelength], [XRT_special_resolution, XRT_special_resolution]-0.5*XRT_special_resolution_error, [XRT_special_resolution, XRT_special_resolution]+0.5*XRT_special_resolution_error, thick=3, color=0

; UVOT resolution
UVOT_special_resolution_error = error_bar*UVOT_resolution_stddev
plotsym, 4, 4., /fill, color=255
oplot, [UVOT_special_wavelength, UVOT_special_wavelength], [UVOT_special_resolution, UVOT_special_resolution], psym=8, color=0
errplot, [UVOT_special_wavelength, UVOT_special_wavelength], [UVOT_special_resolution, UVOT_special_resolution]-0.5*UVOT_special_resolution_error, [UVOT_special_resolution, UVOT_special_resolution]+0.5*UVOT_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [UVOT_special_wavelength, UVOT_special_wavelength], [UVOT_special_resolution, UVOT_special_resolution], psym=8, color=0
errplot, [UVOT_special_wavelength, UVOT_special_wavelength], [UVOT_special_resolution, UVOT_special_resolution]-0.5*UVOT_special_resolution_error, [UVOT_special_resolution, UVOT_special_resolution]+0.5*UVOT_special_resolution_error, thick=3, color=0

; IXPE resolution
IXPE_special_resolution_error = error_bar*IXPE_resolution_error
plotsym, 4, 4., /fill, color=255
oplot, [IXPE_special_wavelength, IXPE_special_wavelength], [IXPE_special_resolution, IXPE_special_resolution], psym=8, color=0
errplot, [IXPE_special_wavelength, IXPE_special_wavelength], [IXPE_special_resolution, IXPE_special_resolution]-0.5*IXPE_special_resolution_error, [IXPE_special_resolution, IXPE_special_resolution]+0.5*IXPE_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [IXPE_special_wavelength, IXPE_special_wavelength], [IXPE_special_resolution, IXPE_special_resolution], psym=8, color=0
errplot, [IXPE_special_wavelength, IXPE_special_wavelength], [IXPE_special_resolution, IXPE_special_resolution]-0.5*IXPE_special_resolution_error, [IXPE_special_resolution, IXPE_special_resolution]+0.5*IXPE_special_resolution_error, thick=3, color=0

; MAXI resolution
;MAXI_special_resolution_error = error_bar*MAXI_resolution_error
;plotsym, 4, 4., /fill, color=255
;oplot, [MAXI_special_wavelength, MAXI_special_wavelength], [MAXI_special_resolution, MAXI_special_resolution], psym=8, color=0
;errplot, [MAXI_special_wavelength, MAXI_special_wavelength], [MAXI_special_resolution, MAXI_special_resolution]-0.5*MAXI_special_resolution_error, [MAXI_special_resolution, MAXI_special_resolution]+0.5*MAXI_special_resolution_error, width=0.015, thick=7, color=255
;plotsym, 4, 3., /fill, color=0
;oplot, [MAXI_special_wavelength, MAXI_special_wavelength], [MAXI_special_resolution, MAXI_special_resolution], psym=8, color=0
;errplot, [MAXI_special_wavelength, MAXI_special_wavelength], [MAXI_special_resolution, MAXI_special_resolution]-0.5*MAXI_special_resolution_error, [MAXI_special_resolution, MAXI_special_resolution]+0.5*MAXI_special_resolution_error, thick=3, color=0
;; instead, with an arrow
;plotsym, 4, 4., /fill, color=255
;oplot, [MAXI_special_wavelength, MAXI_special_wavelength], [MAXI_special_resolution, MAXI_special_resolution], psym=8, color=0
;; connect to the lowest-possible resolution, as an arrow
;arrow, MAXI_special_wavelength, MAXI_special_resolution, MAXI_special_wavelength, 0.45*MAXI_special_resolution, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
;arrow, MAXI_special_wavelength, MAXI_special_resolution, MAXI_special_wavelength, 0.5*MAXI_special_resolution, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
;plotsym, 4, 3., /fill, color=0
;oplot, [MAXI_special_wavelength, MAXI_special_wavelength], [MAXI_special_resolution, MAXI_special_resolution], psym=8, color=0

; NICER resolution
NICER_special_resolution_error = error_bar*NICER_resolution_error
plotsym, 4, 4., /fill, color=255
oplot, [NICER_special_wavelength, NICER_special_wavelength], [NICER_special_resolution, NICER_special_resolution], psym=8, color=0
errplot, [NICER_special_wavelength, NICER_special_wavelength], [NICER_special_resolution, NICER_special_resolution]-0.5*NICER_special_resolution_error, [NICER_special_resolution, NICER_special_resolution]+0.5*NICER_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [NICER_special_wavelength, NICER_special_wavelength], [NICER_special_resolution, NICER_special_resolution], psym=8, color=0
errplot, [NICER_special_wavelength, NICER_special_wavelength], [NICER_special_resolution, NICER_special_resolution]-0.5*NICER_special_resolution_error, [NICER_special_resolution, NICER_special_resolution]+0.5*NICER_special_resolution_error, thick=3, color=0
;; instead, with an arrow
;plotsym, 4, 4., /fill, color=255
;oplot, [NICER_special_wavelength, NICER_special_wavelength], [NICER_special_resolution, NICER_special_resolution], psym=8, color=0
;; connect to the lowest-possible resolution, as an arrow
;arrow, NICER_special_wavelength, NICER_special_resolution, NICER_special_wavelength, 0.45*NICER_special_resolution, color=255, thick=5, hsize=20., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
;arrow, NICER_special_wavelength, NICER_special_resolution, NICER_special_wavelength, 0.5*NICER_special_resolution, color=0, thick=3, hsize=14., /solid, /data ; clip=1, hthick=0.5, head_size=0.5, fill_background=0, hide=1, /solid, /data
;plotsym, 4, 3., /fill, color=0
;oplot, [NICER_special_wavelength, NICER_special_wavelength], [NICER_special_resolution, NICER_special_resolution], psym=8, color=0

; HST optical
HST_special_resolution_error = HST_special_resolution/2.
plotsym, 4, 4., /fill, color=255
oplot, [HST_special_wavelength, HST_special_wavelength], [HST_special_resolution, HST_special_resolution], psym=8, color=0
errplot, [HST_special_wavelength, HST_special_wavelength], [HST_special_resolution, HST_special_resolution]-0.5*HST_special_resolution_error, [HST_special_resolution, HST_special_resolution]+0.5*HST_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [HST_special_wavelength, HST_special_wavelength], [HST_special_resolution, HST_special_resolution], psym=8, color=0
errplot, [HST_special_wavelength, HST_special_wavelength], [HST_special_resolution, HST_special_resolution]-0.5*HST_special_resolution_error, [HST_special_resolution, HST_special_resolution]+0.5*HST_special_resolution_error, thick=3, color=0

; JWST near-infrared
JWST_special_resolution_error = JWST_special_resolution/2.
plotsym, 4, 4., /fill, color=255
oplot, [JWST_special_wavelength, JWST_special_wavelength], [JWST_special_resolution, JWST_special_resolution], psym=8, color=0
errplot, [JWST_special_wavelength, JWST_special_wavelength], [JWST_special_resolution, JWST_special_resolution]-0.5*JWST_special_resolution_error, [JWST_special_resolution, JWST_special_resolution]+0.5*JWST_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [JWST_special_wavelength, JWST_special_wavelength], [JWST_special_resolution, JWST_special_resolution], psym=8, color=0
errplot, [JWST_special_wavelength, JWST_special_wavelength], [JWST_special_resolution, JWST_special_resolution]-0.5*JWST_special_resolution_error, [JWST_special_resolution, JWST_special_resolution]+0.5*JWST_special_resolution_error, thick=3, color=0

; Ground
ground_special_resolution_error = ground_special_resolution/2.
plotsym, 4, 4., /fill, color=255
oplot, [ground_special_wavelength, ground_special_wavelength], [ground_special_resolution, ground_special_resolution], psym=8, color=0
errplot, [ground_special_wavelength, ground_special_wavelength], [ground_special_resolution, ground_special_resolution]-0.5*ground_special_resolution_error, [ground_special_resolution, ground_special_resolution]+0.5*ground_special_resolution_error, width=0.015, thick=7, color=255
plotsym, 4, 3., /fill, color=0
oplot, [ground_special_wavelength, ground_special_wavelength], [ground_special_resolution, ground_special_resolution], psym=8, color=0
errplot, [ground_special_wavelength, ground_special_wavelength], [ground_special_resolution, ground_special_resolution]-0.5*ground_special_resolution_error, [ground_special_resolution, ground_special_resolution]+0.5*ground_special_resolution_error, thick=3, color=0

; cover a patch of the frame with errant lines
loadct, 0, /silent ; greyscale
blank_left = replicate(255., 145, y_display)
blank_right = replicate(255., 40, y_display)
;if display eq 'xray' then tv, blank_left, 0, 0
tv, blank_right, x_display-50, 0

; and another, smaller patch
blank = replicate(255., 75, 75)
if display eq 'both' then tv, blank, 50, y_display-160

; and replot axes to clean up
axis, xaxis=0, color=0, /xlog, xstyle=1, xrange=[wavelength_low, wavelength_high], charsize=charsize_plot
axis, xaxis=1, color=0, /xlog, xstyle=1, xrange=[wavelength_low, wavelength_high], xtickformat='(A1)'
axis, yaxis=0, color=0, /ylog, ystyle=1, yrange=[theta_low, theta_high], charsize=charsize_plot
axis, yaxis=1, color=0, /ylog, ystyle=1, yrange=[theta_low, theta_high], ytickformat='(A1)'

end

FUNCTION DENSITY,x,y, plot=plot, $
                 minx=minx, maxx=maxx, nx=nx, dx=dx, $
                 miny=miny, maxy=maxy, ny=ny, dy=dy, $
                 binx=binx, biny=biny, $
                 _EXTRA=EXTRA_KEYWORDS
; ----------------------------------------------------------
;+
; NAME:
;       DENSITY
;
; PURPOSE:
;       Empirical one or two dimensional densities
;
; AUTHOR:
;       Simon Vaughan (U.Leicester)
;
; CALLING SEQUENCE:
;       dens = density(x,y)
;
; INPUTS:
;       x        - one dimensional data array
;
; OPTIONAL INPUTS:
;       y        - (array) one dimensional data array
;       minx     - (float) starting value for binning along x 
;       maxx     - (float) finishing value for binning along x 
;       miny     - (float) starting value for binning along y
;       maxy     - (float) finishing value for binning along y 
;       nx       - (integer) number of bins along x axis
;       ny       - (integer) number of bins along y axis
;       dx       - (float) bin size along x axis
;       dy       - (float) bin size along y axis
;       plot     - (logical) produce a simple plot?
;
; OUTPUTS:
;       dens     - one or two dimensional array of densities
;
; OPTIONAL OUTPUTS:
;       binx     - locations of bins along x axis
;       biny     = location of bins along y axis
;
; DETAILS:
;       Calculates empirical density distribution of
;       one or two dimensional data. The output is
;       one or two dimensional depending on the input.
;       If only array X is input then work in 1d
;       and produce the histogram (density).
;       If X and Y arrays are input then work in 2d
;       and calculate the joint histogram (density).
;
;       The MINX,MAXX [MINY,MAXY] parameters are
;       used for setting the upper,lower boundaries
;       of the histogram and will default to 
;       min(X),max(X), and similarly for Y.
;
;       The number of bins is determined from the 
;       bin width DX [DY] if given on input, otherwise
;       from NX [NY]. If no values are given default 
;       for NX [NY] is 11.
;
; EXAMPLE USAGE:
;       IDL> x = randomn(seed,1000)
;       IDL> y = randomn(seed,1000)
;       IDL> dens = density(x,y,nx=20,ny=20,/plot)
;       IDL> oplot,x,y,psym=1
;
; PROCEDURES CALLED:
;       SEQ
;
; HISTORY:
;
;
; NOTES:
;-
; ----------------------------------------------------------

; options for compilation (recommended by RSI)
  COMPILE_OPT idl2

; watch out for errors
  on_error,2

; ---------------------------------------------------------
; Check arguments

; is there enough data in X array

  n_x = n_elements(x)
  if (n_x lt 4) then begin
      print,'** Not enough data in DENSITY.'
      return,0
  endif

; compare size of X and Y arrays
; only use arrays of matching size

  n_y = n_elements(y)
  if (n_y eq 0) then begin
      dim = 1
  endif else begin
      dim = 2
      if (n_y lt n_x) then begin
          xx = x[0:n_y-1]
          yy = y
      endif
      if (n_y gt n_x) then begin
          xx = x
          yy = y[0:n_x-1]
      endif
      if (n_y lt n_x) then begin
          xx = x
          yy = y
      endif
  endelse

; set upper/lower ranges 

  if (n_elements(minx) eq 0) then minx = min(x,max=newmax)
  if (n_elements(maxx) eq 0) then begin
      if (n_elements(newmax) ne 0) then maxx = newmax
      if (n_elements(newmax) eq 0) then maxx = max(x)
  endif
  if (dim eq 2) then begin
      if (n_elements(miny) eq 0) then miny = min(y,max=newmax)
      if (n_elements(maxy) eq 0) then begin
          if (n_elements(newmax) ne 0) then maxy = newmax
          if (n_elements(newmax) eq 0) then maxy = max(y)
      endif
  endif

; check ranges make sense

  if (minx ge maxx) then begin
      print,'** MINX > MAXX in DENSITY'
      return,0
  endif
  if (dim eq 2) then begin
      if (miny ge maxy) then begin
          print,'** MINY > MAXY in DENSITY'
          return,0
      endif
  endif

; calculate ranges

  rangex = maxx - minx
  if (dim eq 2) then rangey = maxy - miny

; store old values in case they are updated

  if keyword_set(nx) then old_nx = nx
  if keyword_set(ny) then old_ny = ny

; determine NX [NY] from DX [DY] value if given

  if (n_elements(dx) eq 1) then nx = floor(rangex/dx) + 1
  if (dim eq 2) then begin
      if (n_elements(dy) eq 1) then ny = floor(rangey/dy) + 1
  endif

; make sure NX [NY] exists (either from input NX [NY] or DX [DY])
; if not, use default

  if (n_elements(nx) eq 0) then nx=11
  if (dim eq 2) then begin
      if (n_elements(ny) eq 0) then ny=11
  endif

; make sure DX [DY] exist

  if (n_elements(dx) eq 0) then dx = rangex/(nx - 0.5)
  if (dim eq 2) then begin
      if (n_elements(dy) eq 0) then dy = rangey/(ny - 0.5)
  endif

; ---------------------------------------------------------
; Main routine

  if (dim eq 1) then begin
      dens = histogram(x,binsize=dx,min=minx,max=maxx,locations=binx)
  endif

; produce the 2D density

  if (dim eq 2) then begin
      dens = hist_2d(x,y,bin1=dx,bin2=dy,min1=minx,min2=miny,max1=maxx,max2=maxy)
  endif

; normalise from frequency to relative frequency (density estimate)

  dens = dens/total(dens)

; calculate the bin locations

  binx = seq(minx,maxx,n=nx)+dx/2
  if (dim eq 2) then biny = seq(miny,maxy,n=ny)+dy/2

; make a plot

  if keyword_set(plot) then begin
 
      if (dim eq 1) then begin
          plot,binx,dens,psym=10,xrange=[minx,maxx],/xstyle,_EXTRA=EXTRA_KEYWORDS$
      endif

      if (dim eq 2) then begin

; determine dynamic range: large = logscale, small = linscale
          lo = min(dens[where(dens gt 0)])
          hi = max(dens)
          nlevels = floor(alog(total(dens))) + 1
          nlevels = max([nlevels,6])

          if (hi/lo gt 20) then begin
              levels = exp(seq(alog(lo),alog(hi),n=nlevels))
          endif else begin
              levels = seq(lo,hi,n=nlevels)
          endelse

          contour,dens,binx,biny,levels=levels,/xstyle,/ystyle,xrange=[minx,maxx],yrange=[miny,maxy],_EXTRA=EXTRA_KEYWORDS$
      endif

  endif

; ---------------------------------------------------------
; Return to user

  if (n_elements(old_nx) ne 0) then nx = old_nx
  if (n_elements(old_ny) ne 0) then ny = old_ny
  return,dens

END

