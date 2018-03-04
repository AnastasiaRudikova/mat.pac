function varargout = p6(varargin)
% P6 MATLAB code for p6.fig
%      P6, by itself, creates a new P6 or raises the existing
%      singleton*.
%
%      H = P6 returns the handle to a new P6 or the handle to
%      the existing singleton*.
%
%      P6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in P6.M with the given input arguments.
%
%      P6('Property','Value',...) creates a new P6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before p6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to p6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help p6

% Last Modified by GUIDE v2.5 04-Mar-2018 12:39:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @p6_OpeningFcn, ...
                   'gui_OutputFcn',  @p6_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


% --- Executes just before p6 is made visible.
function p6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to p6 (see VARARGIN)

% Choose default command line output for p6
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);




% UIWAIT makes p6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = p6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'CloseRequestFcn','CloseConfirm');
% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
global password;
password = get(hObject,'String'); %присвоение переменной num введенной строки
password = char(password)
if(length(password)==length('–удикова'))
    if(password == '–удикова')
        set(handles.pushbutton2,'Enable','on')
        set(handles.edit2,'Enable','on')
    else
        msgbox('Ќеверный пароль!','Message')
    end
else
msgbox('¬ведите 8 символов','Message') 
end
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
global N; %объ€вление переменной num глобальной
N = get(hObject,'String'); %присвоение переменной num введенной строки
N = str2num(N{1}); %преобразование содержимого €чейки в число


% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global axiom;
global N; %объ€вление переменной num глобальной

if(N==0)
    errordlg('ќшибочный ввод числа! N=0!', 'Warning')
elseif (N>15)
    warndlg('ƒлительный процесс расчета и отображени€ фрактала!', 'Warning')
 elseif(N<16)
    cla;
    axiom=fractal(N);
end



% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
