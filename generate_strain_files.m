clear; close all; clc;

stretch = 0.4:0.05:1.6;
strain = stretch - 1;

% Isometric activation (lengthen, then activate)
for k = 1:length(strain)
    fid = fopen(['strains_len_act/control_points_strain_',num2str(k),'.dat'],'w');
    fprintf(fid, '0.0 0.0\n');
    fprintf(fid, '0.2 %.2f\n', strain(k));
    fprintf(fid, '0.4 %.2f\n', strain(k));
    fclose(fid);
end

% Active lengthening (activate, then lengthen)
for k = 1:length(strain)
    fid = fopen(['strains_act_len/control_points_strain_',num2str(k),'.dat'],'w');
    fprintf(fid, '0.0 0.0\n');
    fprintf(fid, '0.2 0.0\n');
    fprintf(fid, '0.4 %.2f\n', strain(k));
    fclose(fid);
end