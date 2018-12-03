%% ������� �������� ��� MATLAB(R)
% <html>
%   <h1>
%       �������� ������� CSV, �������������� ���������, ����������
%       ����������� ������������.
%   </h1>
% </html>
%
% ��� ��� ������� ��� ��������� ��� 511 "����������� �������������" 
% ��� ������ ��������� ������� ����� ��� ������������ ������.
%
% ������� ��������, ��������� 2018


%% �� ������ ���������: ������� ������ ��� �������� Mountain Home Well
% �� ���������� ��� ������ ��������� �������� ������ ���� ����� ��� ���������
% Mountain Home Well, ��� �� Snake River Plain, Idaho. �� ��������� ������ ���
% ������� ��� ����� HOTSPOT ��� ���� ����� �� ����������� �� ����������
% �������� ��� Snake River Plain. *�������!* �� �������� ���������� ��� ���
% ��������� ��� ������������ Doug Schmitt, ��� ������������� ��� ��������, �� �����
% <https://creativecommons.org/licenses/by/4.0/ Creative Commons Attribution 4.0>.
% �������� �� ������ ������������ ����������� ����� ����������:
%
% * <https://openei.org/doe-opendata/dataset/mountain-home-well-borehole-geophysics-database � ���� ���������>
% * <https://gdr.openei.org/submissions/289 ����������� ��� �� �����>
% * <https://en.wikipedia.org/wiki/Gamma_ray_logging Gamma-ray logging>
%
% �� ������ ����� ��� ������ CSV (Comma-Separated Values, �������� .csv),
% ������ ����� ��� ���� ������ �������� �� ����� ��� ������������� �� �������.
% ��������� ��� �� ������ |Mountain_Home_K.csv|, ��� ������������� �� ��
% ��������� <https://www.rockware.com/product/wellcad/ WellCAD>.


%% �������� ��� .csv ������� (the data scientist's way)

data_table = readtable('../datasets/Mountain_Home_K.csv');

%%
% �� �� (|readtable|) ��������� �� ������ |Mountain_Home_K.csv| ��� ���������
% ��� ������ |datasets| � ������ �� �� ����� ��� ��������� ��� ������ ���� (|..|)
% ��� ��� ������ ���� ����� ����������.
% ��� ����� ���������� �� �������������� ��� ���� ���� ����� �������� ���.
% �� ��� ��� ����� ���� �� ����� ������, �������� ��� ������������ ���� ���� ������,
% �������� �� ����� �� ������ |Mountain_Home_K.csv| ���� ���� ������ �� ��� ������
% ���, ��� �� �� ��������� �� ��� ������ |data_table = readtable('Mountain_Home_K.csv');|.
%
% ������������ �� ����������� ��� |Mountain_Home_K.csv| ��� ��������� |data_table|
% � ����� ����� <https://www.mathworks.com/help/matlab/data-types.html �����> 
% table ��� ��� ������. � ����� table ����� �������� ��� �������� ������
% �����, �� ����� ����� ���� �������� �� ���� ������ �������� Excel(R).
%
% *Protip: �������� |F1| ��� ������� �������� ��� ������ ��� MATLAB(R) ���� Editor
% � ��� Command Window ��������� ������� ��� ��� ������.*

summary(data_table)

%%
% � |summary| ��� ����� ��� �������� ��� �� �� �������� ��� ��������� �����
% |table|. �������� ��� � ��������� |data_table| �������� ��� ����������,
% �� |Depth| ��� |K| (�� ������� ��� �� ������ �������� �����, _Kallium_
% ��� ��������) �� ����� ����� ����� cell �� ���������� ��� ����� 10533 �� ������.

%%
% ��� �� ����� �� ��������� �� ������ 10 ������� ��� |data_table|.
% "��������� ��� ��� ��� |data_table| ��� ������� ��� 1 ��� 10 (|1:10|) ���
% *����* ��� ������ (|:|)":

data_table(1:10, :)

%%
% � |readtable| ���� �������� �� ������� ������ �� �������, ��� ���
% �������������� � ������� ������ �������� ��� ������� �������� ��� ������.
% ������, � ����� ������� �������� ������, ����� ���� �������� ����.
%
% ��� �� ����� ��� ���������� 10 �������. "��������� ��� ��� ������� ���
% �� 10� ���� �� ����� ����� ��� ��� ��������� (|end-9:end|) ��� *����* ���
% ������ (|:|):

data_table(end-9:end, :)

%%
% * � |end| ����� ��� ������������� ��� �� ��������� ��������.
% * *�������!* To |end-9| ����� �� _������_ ���� �� ����� ��������.
%
% ����������� ��� �������� ��������� �� ���� _�������_ �����.
%
% ���� ��� ������ ��� ������ ��� �� �� �������� �� ������ ���, �� ����������
% �� �������, ���� ��� �� ������ ��������� ��� ���� ��� ���� ���� 10532 ��� 2 ������.


%% �������� ��� .csv ������� (the mathematician's way)

data_matrix = csvread('../datasets/Mountain_Home_K.csv', 2);

%%
% �� ��� ������ |csvread| ���������� ������ CSV �� ����� ���������
% ������������ ��������, �� �������� ������� ������� �������� ���� ����, �� ������
% (�� ������� �������!) ��������� ���������� ��� �� ������� ��� ���������� ��� ���
% ������� ����. � ������ ������� �������� �� ����������� ��� �� ����������� ���
% ������� ��������� ����� ��� �������� � ����� ����������� �� ��� ����������� ���
% ����� ���� ����������� ���������.
% 
% �� ����� ������ ��� |csvread| ����� � ��������� ��� �������, ��� �� �������
% ������ ����� � ������� ��� ������� ��� ������� �
% |csvread| �� �������� ��� ��� ���� ��� �� ���� �������.
% ��� �� ���������� ��� 2 ������ �������, ���� ��� � ����� �������� �� �� ����� �
% ���� �����, ��� � ������� �������� ��� ������� ��������.
% ������������ ��� ����� ��� |csvread| ��� ���������
% |data_matrix| � ����� ����� ������� 10532 ������� ��� 2 ������:

data_matrix(1:10, :)
size(data_matrix)

%%
% * � |size| ���������� ��� ���������� ��� ������.
%
% *��� ������ ��� � ����� ����� ����� �� ����� �� m ��� � ������� �����
% ����� �� ������� (%) ������.*
%
% ���� ������� ������� ��� �� ����� ��� �������.


%% �� ����� ��� �������
% ��� ��������, �� ��� ��� ����� ����������, ������� ��� ��������� 
% |depth| ��� ����� ��� ������ ������ ��� |data_matrix|, ��� ���
% ��������� |�| ��� ����� ��� �������� ������ ��� |data_matrix|:

depth = data_matrix(:, 1);
K = data_matrix(:, 2);

%%
% * �� ���������� �� ������ ������ ��� |K = data_matrix(:, end);|.
%
% � i-���� ������ ��� |�| ���� �� ������� ��� ��������
% ������ ��� ����� �� ����� ��� �� ��� i-���� ������ ��� |depth|. ����
% ������� ������� ��� �� ����� ��� �������:

figure
plot(depth, K)
xlabel('Depth (m)')
ylabel('Potassium (%)')

%%
% * ���������� ��� ����� �� ��� �������� �� �� |figure|.
% * ����������� �� �������� ��� |depth| �� ���� �� �������� ��� |�| �� ��
% |plot|.
% * ������� ������� ���� ��������� (x) ��� ���������� (y) ����� �� ���
% |xlim| ��� |ylim| ����������.
%
% ��, ���� �������� �� ��� �������� ����! ��� ������ �� ������ ���� �������
% ��������� �����; �� �������� �� ������� ������; �� �� ����������� �� ����.
% �� ������������ ��� ���������� ����� ��� �������� [0, 5] ������ �� ��������
% �������: 

figure
plot(depth, K)
xlabel('Depth (m)')
ylabel('Potassium (%)')
ylim([0, 5])

%%
% * ��������������� ��� |ylim| �� ������ �� ���� ��� ����������� �����
% �� ����� ����������� |[y_min, y_max]|.


%% ������������ ��������� ��� ���������� �������
% �������� �� ���������� ��� "�������������" �����, ���������� ��� ��� ��
% ������ ���������. ��� ������� ������ ������� ������������ ����� ������
% ����� ��� ������ ��� ������ ������� ���������. ��� �����, ��� ������ ����
% �� ������ ��� ��������� ����� �����, ���������� ������� ��� ���
% ��������������� "�������������" �����. ��� ���� ���� �� ���� �
% ������������� ��� ������������� ����� �� �� ���������� ���� �������
% ����������, ������������ ���� ������������� ������. 
%
% �� ������ ��� ������� (�������) ���� ������ ������ ��-�������� ������� ������:

accepted_rows = (K >= 0);

%%
% �� ������ ���;
%
% * �� ��� |K>=0| ��������� ��� �������� ����� logical �� ����� 0 � 1. ��
% �� i-���� �������� ��� |K| ���������� ��� ���������, �� i-���� ��������
% ��� ����������� ����� logical ������� �� ���� 1 (true, ������),
% ������ ������� �� ���� 0 (false, ������).
% * �� ����������� �������� ��� ��������.
% * �� ���������� ��� ������� ������ ������������ ��� ��������
% |accepted_rows| ��� ����� ����� logical.

%%
% ����� ������� ����� ���������;
sum(accepted_rows)

%%
% * ������� �� �������� ��� ����������� |accepted_rows|. ������ ����
% �������� 0 ��� 1, �� �������� ����� ��� �� �� ������ ��� ������� ���
% ����������� ��� ��������� ��������.

nnz(accepted_rows)

%%
% * � `nnz` ���������� ��� ������ ��� ��-��������� ��������� ��� ��������� ���.
%
% ����� ������� ����� ��-���������;
rejected_rows = ~accepted_rows;
sum(rejected_rows)

%%
% * � �������� |~| (������) ���������� ��� �������� ����� logical ��� �������� 1
% ��� ���� ���� � |accepted_rows| �������� 0, ��� 0 ���� ���� |accepted_rows|
% _���_ �������� 0. 

%%
% Sanity check: � ���������� �������� ��� ������ |data_matrix|, ��� �����
% ��� �� ��� ������ ��� �������, ��� ��� ��� ���������, _�����_ ��� ������
% ��� ������� ��� ��������� ������� ���������, �� ������ �� ����� _����_ ��
% ��� ������ ��� ������� ��� ����������. �����;

length(data_matrix) - sum(accepted_rows) == sum(rejected_rows)

%%
% ���!
%
% * �� ����� ���� |==| ����� � �������� ������� ��������. ���������� 1 (true) �� �
% ������� ������������. �� ���� ���� |=| ����� � �������� ���������!

%%
% �� ���������� ������ ��� ������� ���������:

depth_accepted = depth(accepted_rows);
K_accepted = K(accepted_rows);

%%
% * ��� �������� ����� logical (���� �� |accepted_rows|) ���� ����� ��
% ������ �� ��� �������� (���� �� |depth|), ���������� �� �������� ��� ���
% ������ ���� ������ �� �������� ����� |logical| ����� ������.
%
% �� ���� ��� ������� ������ ���� ��� �� ������ ��� MATLAB(R)!
% � ��������������� ���' ����� ��� ����� ��� MATLAB(R) �������� ���� ��������.

%%
% ������� ��������� ��� ������� �� ������ ����� ������������� �����,
% �� ��������������� �� ������� ������ �� ����� �� �� �����:

figure
plot(depth_accepted, K_accepted)
xlabel('Depth (m)')
ylabel('Potassium (%)')


%% �� ����� ��� ���������� ��� � ����� ��� ������ ���������� �������

figure
hist(K_accepted, 100)
xlabel('Potassium (%)')
ylabel('Count')

%%
% � |hist| ������� �� ����� ������ ��� �������� (��� �� |K|), ���
% ����������� ��� ������ ��� �������� ����������� ("�������", ��� 100) ��� �����
% ������� �� ���������� �� �������� ��� �����������.
%
% �� ������������ ��� �������� (|min|) ��� ������� (|max|) ���� ��� |K_accepted|

min(K_accepted)
max(K_accepted)

%%
% �� ������������ �� ���� ���� (|mean|), ������� (|median|), ��� ��
% ��������� ���� (|mode|):

mean(K_accepted)
median(K_accepted)
mode(K_accepted)

%%
% _�������:_
%
% * �� ���� ������ ��� ������������� (��� �����) ���������� �� �������� �����;  
%
% ���� �������� ����� �� ��������� ���;
sum(K_accepted==0)

%%
% _�������:_
% 
% * ����� � ��������� ���� ��� ����������� �� ��� ������ ��� �������������;
%
% �� ���������� ��� ��������� ��� ����� ����� �� ����� ��������� ��� 730 m:

less_than_730m = (depth_accepted < 730);
depth_730 = depth_accepted(less_than_730m);
K_730 = K_accepted(less_than_730m);

%%
% ����� ��������� ���������;

size(K_730)

%%
% � |�_730| ���� 1109 ������� (��� ������������ �� 1109 ���������) ��� 1 �����.
% �� ����������� �� ������� ������ ��� ���� ����� 730 �����:

figure
plot(depth_730, K_730)
xlabel('Depth (m)')
ylabel('Potassium (%)')

%%
% �� ����������� ��� ���������� ���� �� ���������� ���� ��������� (normal, �
% �����������, gaussian) ���������. �� ��� ���������� ��� _���������_
% ����������� ��� ��������� ���������
% (��� ���� �������) �� ���� ���� $\mu$ ��� �������� $\sigma^2$:
%
% $$p(x; \mu, \sigma) = \frac{1}{\sigma\sqrt{2\pi}} e^{-{\frac{(x-\mu)^2}{2\sigma^2}}}$$

figure
histfit(K_730)
xlabel('Potassium (%) for depth < 730m');
ylabel('Count')

%%
% * � |histfit| ��������� ��� ���������� �� ������ ������� ��� �� ���
% ����������� ���� ��� ������� ��� ��������� ��� ���������, �����������
% ��� �������� ��������, ��� �� ��������� ���� �� �� ����������.
%
% _Bonus points:_
%
% * ����� ����� _���������_ ����������� � ������� ������� ��� ������������; 

%%
% �� _������� ��������� �����������_ ��� ������� �� ������������� ������
% �� �� �������� ����������� ��� ���� �������� �� �������� ��������:

figure
normplot(K_730)
xlabel('Potassium (%) for depth < 730m')

%%
% * � |normplot| ��������� �� ������� ��������� �����������.
% * �� �� ��������� (�� ������ (+) ��� �������) ����� ���� ��� ������,
% ����������� ��� ���� �������� �� �������� ��������.
%
% �� ��������� �������� ������ ��� ���� < 730m �������� �� �����
% _�������� �����_ &#128520; ��� �������� ��������!


%% ���������� ������� MATLAB(R) �� ������
% �� ������������� �� �������� ��� ������������������ �� ����� ������
% MATLAB(R) ��� ���������� �������:

mountain_home_K = [depth_accepted, K_accepted];
save('../exports/Mountain_Home_K', 'mountain_home_K')

%%
% * �������� ��� ������ |mountain_home_K| �� ��� ������, ��� ����� ��� ������
% ��� �� ������� ������.
% * ���� ��� ������ ���� (|..|) ��� ������������ ��� ������ |mountain_home_K|
% ��� ������ |Mountain_Home_K_small| �� ����� (��������) �� ���� ��������
% |.mat|, ��� ���� ����� ������������ ��� �� MATLAB(R). 
%
% ����������� �� ��� ���������� ��� ��������� ������� ���������:

mountain_home_K_small = [depth_730, K_730];
save('../exports/Mountain_Home_K_small', 'mountain_home_K_small')

%%
% ���� ���������, �� ����� �� ��������� �� ��������, �� ����� ���� �����
% ������������� ��� �� ��� ������������ ������������� ������� ���
% MATLAB(R), �� ����� ������� �� �� �������� �� ��� �����. 


%% ����� ��������� ��������������� ��� �������� ���������
% �� ��������������� ��� �������������� ���� ��� �������� ��� ��������� ����� ����
% ����������� ���� ��������� �� �������������� ���������� �������� ��� �����������
% ��� �������� �����. � ���������� ���������� ���������� ��������� �� ������������
% ����� ������� <https://en.wikipedia.org/wiki/Data_wrangling data wrangling>.
% �� ��� ���������� � ������� ��������� ����������, ���� �� ���� �� ������
% ��� ����� ��� �������� ��� ���������� ������� ���� � Python � � R, ��� ���������
% �������� ���������, �� �������� �� �� MATLAB(R). � MATLAB(R) �������� ��
% ������������ ���������� �� ����������� ��������� �������� ��� ����������
% ����������, ������� �� ���������� ����� (������ �����) ��������� ��� ���
% ������ �� ��������������� �� FORTRAN.
% 
% ����� ���������� ��� MATLAB(R) �� ���������� �� �������� ������������� ��
% ����� ������� (��� ����� �����, ����� ���� ��� ��-��������� �����)
% ��� ������ �������� ��� ������������, ���� ��� �������� ��� �����������
% ���������� ��������� ����� ��������� ������ ���� ��� ��������� ��������.
% ������, ����� ���� ��������, ��� ��������� ��� ������������ ��������,
% �� ����������� �� �������� �� ������ ������� ��� �� ����������� ��� �������,
% ���� ��� ������� ��������� ����. � ������� (��� ������ �� ����� ����� ����
% ��� 6 ����� ��� �� �� ������� �� ��� ��� �� ����� �����������) �� ������
% �� �������� �� �� ������������ �� ������� ��� �� ������ ��� �������,
% ��� ������� ����, ��� �� �� ��������� "��-���������" �����, ���� �.�.
% |-999|, |NaN|, |Inf| � �������� (�� ����������� ��� � ���������� ��������
% ��� ������ �� ����� �����).
%
% ����������� ���� �� ������� ��� ���������� ��� ��� ������� ��� ��
% ����� ���� ��� �����������. ��� ���������� �� ������� ��������� ���
% ������� ����. ������������ ����� ��������� ��������� ������ MATLAB(R) �� ������
% ����� ���������� ����������:
%
% * <https://erikreinertsen.com/matlab-style-guide/ Matlab style guide>.
% * <https://www.cambridge.org/core/books/elements-of-matlab-style/8825411CE69013434DB0939780CFD907 The Elements of MATLAB Style> (������).
% * <https://www.mathworks.com/matlabcentral/fileexchange/45047-matlab-style-guidelines-cheat-sheet?focused=bb5d423a-49d8-424e-a4d8-794869ba858e&tab=example Matlab Style Guidelines Cheat Sheet> (��������� ��� �������� ������).
%
% �������������� �� �������� ��� �� ����� ��������� � ���� ������ ���������������,
% �������� ��� �� ���� ����� �� �������������� �� ������������ ������.
% ������ �� ���� ����� ��� ���� ����� �������� �� ��������������� �������
% ��� MATLAB(R) ����������� �� �������. �� ������� ��������������� ����� ����
% �� �������� �� ��� ���������: ���������� ��� ������������� ������ ��� ��
% �������� ��� ������ �� �������. ���� �������� ��� � MATLAB(R) ��� �����
% ����� ���� �������. ��� �������� ����� �������� ����� ������� �� ���������
% ������� ���������� ������ ��� ������ ��������������� � ������ ���
% ������������ ������.


%% �� ������ �� ���� �� ������
% * �������� ������� ������ CSV.
% * ��������� ����������.
% * ������������ ��������� ��� �������.
% * ����������, ���������� �� ���������� �������� ��������� ���������,
%   ������� ��������� �����������.
% * ���������� ������� MATLAB(R) �� ������.
% * ������� ����� ��������� ��������������� ��� �������� ���������.