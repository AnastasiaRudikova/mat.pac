function CloseConfirm 
    global N;
    global axiom;
    switch questdlg('Выход из программы. Хотите сохранить даные?', 'Сообщение', 'Да', 'Нет, очистить','Нет, очистить') 
    case 'Да'
    save var_gui axiom N;
    closereq ;
    case 'Нет, очистить'
    clear global N;
    clear global axiom;
    closereq ;
end