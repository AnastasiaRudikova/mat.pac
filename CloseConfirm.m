function CloseConfirm 
    global N;
    global axiom;
    switch questdlg('����� �� ���������. ������ ��������� �����?', '���������', '��', '���, ��������','���, ��������') 
    case '��'
    save var_gui axiom N;
    closereq ;
    case '���, ��������'
    clear global N;
    clear global axiom;
    closereq ;
end