function varargout = Circuit_GUI2(varargin)
% CIRCUIT_GUI2 MATLAB code for Circuit_GUI2.fig
%      CIRCUIT_GUI2, by itself, creates a new CIRCUIT_GUI2 or raises the existing
%      singleton*.
%
%      H = CIRCUIT_GUI2 returns the handle to a new CIRCUIT_GUI2 or the handle to
%      the existing singleton*.
%
%      CIRCUIT_GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRCUIT_GUI2.M with the given input arguments.
%
%      CIRCUIT_GUI2('Property','Value',...) creates a new CIRCUIT_GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Circuit_GUI2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Circuit_GUI2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Circuit_GUI2

% Last Modified by GUIDE v2.5 26-Jul-2017 13:42:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Circuit_GUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @Circuit_GUI2_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before Circuit_GUI2 is made visible.
function Circuit_GUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Circuit_GUI2 (see VARARGIN)

% Choose default command line output for Circuit_GUI2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Circuit_GUI2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.givevol_text,'Visible','on')
set(handles.givec_text,'Visible','on')

%%%%%%%%Turn off the visiblitiy for the panel with the Parallel/Ciruit
%%%%%%%%picture on it.


%%%Turns off the visibility for the each resistance value and text
%%%underneath the drop down menu for the number of resistors.%%%%

set(handles.R3_1,'Visible','off')
set(handles.R3,'Visible','off')
set(handles.R4_1,'Visible','off')
set(handles.R4,'Visible','off')
set(handles.R5_1,'Visible','off')
set(handles.R5,'Visible','off')
set(handles.R6_1,'Visible','off')
set(handles.R6,'Visible','off')

%%%%%Makes the Voltage across each of the resistor values not visible%%%
set(handles.R1_2,'Visible','on')
set(handles.R2_2,'Visible','on')
set(handles.R3_2,'Visible','off')
set(handles.edit15,'Visible','off')
set(handles.R4_2,'Visible','off')
set(handles.edit16,'Visible','off')
set(handles.R5_2,'Visible','off')
set(handles.edit17,'Visible','off')
set(handles.R6_2,'Visible','off')
set(handles.edit18,'Visible','off')



% --- Outputs from this function are returned to the command line.
function varargout = Circuit_GUI2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function Par_Ser_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Par_Ser (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
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


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



function CurrentBox_Callback(hObject, eventdata, handles)
% hObject    handle to CurrentBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CurrentBox as text
%        str2double(get(hObject,'String')) returns contents of CurrentBox as a double


% --- Executes during object creation, after setting all properties.
function CurrentBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CurrentBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R1_Callback(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R1 as text
%        str2double(get(hObject,'String')) returns contents of R1 as a double


% --- Executes during object creation, after setting all properties.
function R1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R2_Callback(hObject, eventdata, handles)
% hObject    handle to R2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R2 as text
%        str2double(get(hObject,'String')) returns contents of R2 as a double


% --- Executes during object creation, after setting all properties.
function R2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R3_Callback(hObject, eventdata, handles)
% hObject    handle to R3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R3 as text
%        str2double(get(hObject,'String')) returns contents of R3 as a double


% --- Executes during object creation, after setting all properties.
function R3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R4_Callback(hObject, eventdata, handles)
% hObject    handle to R4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R4 as text
%        str2double(get(hObject,'String')) returns contents of R4 as a double


% --- Executes during object creation, after setting all properties.
function R4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R5_Callback(hObject, eventdata, handles)
% hObject    handle to R5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R5 as text
%        str2double(get(hObject,'String')) returns contents of R5 as a double


% --- Executes during object creation, after setting all properties.
function R5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R6_Callback(hObject, eventdata, handles)
% hObject    handle to R6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R6 as text
%        str2double(get(hObject,'String')) returns contents of R6 as a double


% --- Executes during object creation, after setting all properties.
function R6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function Total_resistance_Callback(hObject, eventdata, handles)
% hObject    handle to Total_resistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Total_resistance as text
%        str2double(get(hObject,'String')) returns contents of Total_resistance as a double


% --- Executes during object creation, after setting all properties.
function Total_resistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Total_resistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in resistanceN.
function resistanceN_Callback(hObject, eventdata, handles)
% hObject    handle to resistanceN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns resistanceN contents as cell array
%        contents{get(hObject,'Value')} returns selected item from resistanceN

rnum = get(handles.resistanceN,'Value')
if rnum == 1
    set(handles.R1,'Visible','on');
    set(handles.R1_1,'Visible','on');
    set(handles.R2,'Visible','on');
    set(handles.R2_1,'Visible','on');
    set(handles.R3,'Visible','off');
    set(handles.R3_1,'Visible','off');
    set(handles.R4,'Visible','off');
    set(handles.R4_1,'Visible','off');
    set(handles.R5,'Visible','off');
    set(handles.R5_1,'Visible','off');
    set(handles.R6,'Visible','off');
    set(handles.R6_1,'Visible','off');
    %myPic=imread('Circuit1.png');
    %imshow(myPic)
    %%%%%%Voltage/Current Across each resistor 
    %%%%%%Edit text boxes/static boxes For 2 Resistors%%%%%
    set(handles.R1_2,'Visible','on');
    set(handles.edit13,'Visible','on');
    set(handles.R2_2,'Visible','on');
    set(handles.edit14,'Visible','on');
    set(handles.R3_2,'Visible','off');
    set(handles.edit15,'Visible','off');
    set(handles.R4_2,'Visible','off');
    set(handles.edit16,'Visible','off');
    set(handles.R5_2,'Visible','off');
    set(handles.edit17,'Visible','off');
    set(handles.R6_2,'Visible','off');
    set(handles.edit18,'Visible','off');
    
    
elseif rnum == 2
    set(handles.R1,'Visible','on');
    set(handles.R1_1,'Visible','on');
    set(handles.R2,'Visible','on');
    set(handles.R2_1,'Visible','on');
    set(handles.R3,'Visible','on');
    set(handles.R3_1,'Visible','on');
    set(handles.R4,'Visible','off');
    set(handles.R4_1,'Visible','off');
    set(handles.R5,'Visible','off');
    set(handles.R5_1,'Visible','off');
    set(handles.R6,'Visible','off');
    set(handles.R6_1,'Visible','off');
    
        %%%%%%Voltage/Current Across each resistor 
    %%%%%%Edit text boxes/static boxes For 3 Resistors%%%%%
    set(handles.R1_2,'Visible','on');
    set(handles.edit13,'Visible','on');
    set(handles.R2_2,'Visible','on');
    set(handles.edit14,'Visible','on');
    set(handles.R3_2,'Visible','on');
    set(handles.edit15,'Visible','on');
    set(handles.R4_2,'Visible','off');
    set(handles.edit16,'Visible','off');
    set(handles.R5_2,'Visible','off');
    set(handles.edit17,'Visible','off');
    set(handles.R6_2,'Visible','off');
    set(handles.edit18,'Visible','off');
    
    
elseif rnum == 3 
    set(handles.R1,'Visible','on');
    set(handles.R1_1,'Visible','on');
    set(handles.R2,'Visible','on');
    set(handles.R2_1,'Visible','on');
    set(handles.R3,'Visible','on');
    set(handles.R3_1,'Visible','on');
    set(handles.R4,'Visible','on');
    set(handles.R4_1,'Visible','on');
    set(handles.R5,'Visible','off');
    set(handles.R5_1,'Visible','off');
    set(handles.R6,'Visible','off');
    set(handles.R6_1,'Visible','off');
    
            %%%%%%Voltage/Current Across each resistor 
    %%%%%%Edit text boxes/static boxes for 4 Resistors%%%%%
    set(handles.R1_2,'Visible','on');
    set(handles.edit13,'Visible','on');
    set(handles.R2_2,'Visible','on');
    set(handles.edit14,'Visible','on');
    set(handles.R3_2,'Visible','on');
    set(handles.edit15,'Visible','on');
    set(handles.R4_2,'Visible','on');
    set(handles.edit16,'Visible','on');
    set(handles.R5_2,'Visible','off');
    set(handles.edit17,'Visible','off');
    set(handles.R6_2,'Visible','off');
    set(handles.edit18,'Visible','off');
    
elseif rnum == 4
    set(handles.R1,'Visible','on');
    set(handles.R1_1,'Visible','on');
    set(handles.R2,'Visible','on');
    set(handles.R2_1,'Visible','on');
    set(handles.R3,'Visible','on');
    set(handles.R3_1,'Visible','on');
    set(handles.R4,'Visible','on');
    set(handles.R4_1,'Visible','on');
    set(handles.R5,'Visible','on');
    set(handles.R5_1,'Visible','on');
    set(handles.R6,'Visible','off');
    set(handles.R6_1,'Visible','off');
    
            %%%%%%Voltage/Current Across each resistor 
    %%%%%%Edit text boxes/static boxes For 5 Resistors%%%%%
    set(handles.R1_2,'Visible','on');
    set(handles.edit13,'Visible','on');
    set(handles.R2_2,'Visible','on');
    set(handles.edit14,'Visible','on');
    set(handles.R3_2,'Visible','on');
    set(handles.edit15,'Visible','on');
    set(handles.R4_2,'Visible','on');
    set(handles.edit16,'Visible','on');
    set(handles.R5_2,'Visible','on');
    set(handles.edit17,'Visible','on');
    set(handles.R6_2,'Visible','off');
    set(handles.edit18,'Visible','off');
    
else
    set(handles.R1,'Visible','on');
    set(handles.R1_1,'Visible','on');
    set(handles.R2,'Visible','on');
    set(handles.R2_1,'Visible','on');
    set(handles.R3,'Visible','on');
    set(handles.R3_1,'Visible','on');
    set(handles.R4,'Visible','on');
    set(handles.R4_1,'Visible','on');
    set(handles.R5,'Visible','on');
    set(handles.R5_1,'Visible','on');
    set(handles.R6,'Visible','on');
    set(handles.R6_1,'Visible','on');
    
            %%%%%%Voltage/Current Across each resistor 
    %%%%%%Edit text boxes/static boxes For 6 Resistors%%%%%
    set(handles.R1_2,'Visible','on');
    set(handles.edit13,'Visible','on');
    set(handles.R2_2,'Visible','on');
    set(handles.edit14,'Visible','on');
    set(handles.R3_2,'Visible','on');
    set(handles.edit15,'Visible','on');
    set(handles.R4_2,'Visible','on');
    set(handles.edit16,'Visible','on');
    set(handles.R5_2,'Visible','on');
    set(handles.edit17,'Visible','on');
    set(handles.R6_2,'Visible','on');
    set(handles.edit18,'Visible','on');
    
end
%%%%%%%%%%%%%%%%%THESE IF-ELSE STATEMENTS CHANGE THE NUMBER OF RESISTORS
%%%%%%%%%%%%%%%%%EDIT TEXT/STATIC BOXES DISPLAYED%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function resistanceN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resistanceN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in serorpar2.
function serorpar2_Callback(hObject, eventdata, handles)
% hObject    handle to serorpar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns serorpar2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from serorpar2
serorpar = get(handles.serorpar2,'Value')
if serorpar ==1
    set(handles.isvoltage,'Visible','on')
    set(handles.iscurrent,'Visible','off')
else
    set(handles.isvoltage,'Visible','off')
    set(handles.iscurrent,'Visible','on')
end

% --- Executes during object creation, after setting all properties.
function serorpar2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to serorpar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5
tb5 = get(handles.togglebutton5,'Value')
if tb5 ==1
    set(handles.edit19,'Visible','on')
    set(handles.text5,'Visible','on')
else
    set(handles.edit19,'Visible','off')
    set(handles.text5,'Visible','off')
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton6
cb6 = get(handles.togglebutton6,'Value')
if cb6 ==1
    set(handles.edit2,'Visible','on')
    set(handles.text7,'Visible','on')

else
    set(handles.edit2,'Visible','off')
    set(handles.text7,'Visible','off')

end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RE1 = str2double(get(handles.R1,'String'))
RE2 = str2double(get(handles.R2,'String'))
RE3 = str2double(get(handles.R3,'String'));
RE4 = str2double(get(handles.R4,'String'));
RE5 = str2double(get(handles.R5,'String'));
RE6 = str2double(get(handles.R6,'String'));
rnum = get(handles.resistanceN,'Value');
SV = str2double(get(handles.edit19,'String'));
if rnum == 1
    UR1 = str2double(get(handles.edit13,'String'))
    UR2 = str2double(get(handles.edit14,'String'))
    UTR = str2double(get(handles.Total_resistance,'String'))
    tr = RE1+RE2
    VRE1 = SV*(RE1/tr);
    VRE2 = SV*(RE2/tr);
    if (abs(VRE1 - UR1) < 0.01)
        set(handles.edit13,'BackgroundColor','Green')
    else
        set(handles.edit13,'BackgroundColor','Red')
    end
    if (abs(VRE2 - UR2) < 0.01)
        set(handles.edit14,'BackgroundColor','Green')
    else
        set(handles.edit14,'BackgroundColor','Red')
    end
    if (abs(tr - UTR) < 0.01)
        set(handles.Total_resistance,'BackgroundColor','Green')
    else
        set(handles.Total_resistance,'BackgroundColor','Red')
    end
elseif rnum == 2
    UR1 = str2double(get(handles.edit13,'String'))
    UR2 = str2double(get(handles.edit14,'String'))
    UR3 = str2double(get(handles.edit15,'String'))
    tr = RE1+RE2+RE3;
    VRE1 = SV*(RE1/tr);
    VRE2 = SV*(RE2/tr);
    VRE3 = SV*(RE3/tr);
    if (abs(VRE1 - UR1) < 0.01)
        set(handles.edit13,'BackgroundColor','Green')
    else
        set(handles.edit13,'BackgroundColor','Red')
    end
    if (abs(VRE2 - UR2) < 0.01)
        set(handles.edit14,'BackgroundColor','Green')
    else
        set(handles.edit14,'BackgroundColor','Red')
    end
    if (abs(VRE3 - UR3) < 0.01)
        set(handles.edit15,'BackgroundColor','Green')
    else
        set(handles.edit15,'BackgroundColor','Red')
    end
    if (abs(tr - UTR) < 0.01)
        set(handles.Total_resistance,'BackgroundColor','Green')
    else
        set(handles.Total_resistance,'BackgroundColor','Red')
    end
elseif rnum == 3
    UR1 = str2double(get(handles.edit13,'String'))
    UR2 = str2double(get(handles.edit14,'String'))
    UR3 = str2double(get(handles.edit15,'String'))
    UR4 = str2double(get(handles.edit16,'String'))
    tr = RE1+RE2+RE3+RE4;
    VRE1 = SV*(RE1/tr);
    VRE2 = SV*(RE2/tr);
    VRE3 = SV*(RE3/tr);
    VR4 = SV*(RE4/tr);
    if (abs(VRE1 - UR1) < 0.01)
        set(handles.edit13,'BackgroundColor','Green')
    else
        set(handles.edit13,'BackgroundColor','Red')
    end
    if (abs(VRE2 - UR2) < 0.01)
        set(handles.edit14,'BackgroundColor','Green')
    else
        set(handles.edit14,'BackgroundColor','Red')
    end
    if (abs(VRE3 - UR3) < 0.01)
        set(handles.edit15,'BackgroundColor','Green')
    else
        set(handles.edit15,'BackgroundColor','Red')
    end
    if (abs(VRE4 - UR4) < 0.01)
        set(handles.edit16,'BackgroundColor','Green')
    else
        set(handles.edit16,'BackgroundColor','Red')
    end
    if (abs(tr - UTR) < 0.01)
        set(handles.Total_resistance,'BackgroundColor','Green')
    else
        set(handles.Total_resistance,'BackgroundColor','Red')
    end
elseif rnum == 4
    UR1 = str2double(get(handles.edit13,'String'))
    UR2 = str2double(get(handles.edit14,'String'))
    UR3 = str2double(get(handles.edit15,'String'))
    UR4 = str2double(get(handles.edit16,'String'))
    UR5 = str2double(get(handles.edit17,'String'))
    tr = RE1+RE2+RE3+RE4+RE5;
    VRE1 = SV*(RE1/tr);
    VRE2 = SV*(RE2/tr);
    VRE3 = SV*(RE3/tr);
    VR4 = SV*(RE4/tr);
    VR5 = SV*(RE5/tr);
    if (abs(VRE1 - UR1) < 0.01)
        set(handles.edit13,'BackgroundColor','Green')
    else
        set(handles.edit13,'BackgroundColor','Red')
    end
    if (abs(VRE2 - UR2) < 0.01)
        set(handles.edit14,'BackgroundColor','Green')
    else
        set(handles.edit14,'BackgroundColor','Red')
    end
    if (abs(VRE3 - UR3) < 0.01)
        set(handles.edit15,'BackgroundColor','Green')
    else
        set(handles.edit15,'BackgroundColor','Red')
    end
    if (abs(VRE4 - UR4) < 0.01)
        set(handles.edit16,'BackgroundColor','Green')
    else
        set(handles.edit16,'BackgroundColor','Red')
    end
    if (abs(VRE5 - UR5) < 0.01)
        set(handles.edit17,'BackgroundColor','Green')
    else
        set(handles.edit17,'BackgroundColor','Red')
    end
    if (abs(tr - UTR) < 0.01)
        set(handles.Total_resistance,'BackgroundColor','Green')
    else
        set(handles.Total_resistance,'BackgroundColor','Red')
    end
else
    UR1 = str2double(get(handles.edit13,'String'))
    UR2 = str2double(get(handles.edit14,'String'))
    UR3 = str2double(get(handles.edit15,'String'))
    UR4 = str2double(get(handles.edit16,'String'))
    UR5 = str2double(get(handles.edit17,'String'))
    UR6 = str2double(get(handles.edit18,'String'))
    tr = RE1+RE2+RE3+RE4+RE5+RE6;
    VRE1 = SV*(RE1/tr);
    VRE2 = SV*(RE2/tr);
    VRE3 = SV*(RE3/tr);
    VR4 = SV*(RE4/tr);
    VR5 = SV*(RE5/tr);
    VR6 = SV*(RE6/tr);
    if (abs(VRE1 - UR1) < 0.01)
        set(handles.edit13,'BackgroundColor','Green')
    else
        set(handles.edit13,'BackgroundColor','Red')
    end
    if (abs(VRE2 - UR2) < 0.01)
        set(handles.edit14,'BackgroundColor','Green')
    else
        set(handles.edit14,'BackgroundColor','Red')
    end
    if (abs(VRE3 - UR3) < 0.01)
        set(handles.edit15,'BackgroundColor','Green')
    else
        set(handles.edit15,'BackgroundColor','Red')
    end
    if (abs(VRE4 - UR4) < 0.01)
        set(handles.edit16,'BackgroundColor','Green')
    else
        set(handles.edit16,'BackgroundColor','Red')
    end
    if (abs(VRE5 - UR5) < 0.01)
        set(handles.edit17,'BackgroundColor','Green')
    else
        set(handles.edit17,'BackgroundColor','Red')
    end
     if (abs(VRE6 - UR6) < 0.01)
        set(handles.edit18,'BackgroundColor','Green')
    else
        set(handles.edit18,'BackgroundColor','Red')
     end
    if (abs(tr - UTR) < 0.01)
        set(handles.Total_resistance,'BackgroundColor','Green')
    else
        set(handles.Total_resistance,'BackgroundColor','Red')
    end
end
    
    
    
    
    
    
    
    
