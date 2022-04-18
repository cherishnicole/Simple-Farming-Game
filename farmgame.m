function varargout = farmgame(varargin)

% FARMGAME MATLAB code for farmgame.fig
%      FARMGAME, by itself, creates a new FARMGAME or raises the existing
%      singleton*.
%
%      H = FARMGAME returns the handle to a new FARMGAME or the handle to
%      the existing singleton*.
%
%      FARMGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FARMGAME.M with the given input arguments.
%
%      FARMGAME('Property','Value',...) creates a new FARMGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before farmgame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to farmgame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help farmgame

% Last Modified by GUIDE v2.5 22-Mar-2022 22:41:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @farmgame_OpeningFcn, ...
                   'gui_OutputFcn',  @farmgame_OutputFcn, ...
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


% --- Executes just before farmgame is made visible.
function farmgame_OpeningFcn(hObject, eventdata, handles, varargin)
axes(handles.axes1);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\soil2.png')
axes(handles.axes2);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\crops.png')
axes(handles.axes10);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\carrot.png')
axes(handles.axes11);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\onion.png')
axes(handles.axes12);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\tomato.png')
axes(handles.axes17);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\matlabvalley.png')
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to farmgame (see VARARGIN)

% Choose default command line output for farmgame
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes farmgame wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = farmgame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plantbutton.
function plantbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plantbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\crops.png')
axes(handles.axes1);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\soilseeds.png')

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


% --- Executes on button press in waterbutton.
function waterbutton_Callback(hObject, eventdata, handles)
% hObject    handle to waterbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\Water.png')
axes(handles.axes1);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\soilsprout.png')

% --- Executes on button press in harvestbutton.
function harvestbutton_Callback(hObject, eventdata, handles)
% hObject    handle to harvestbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\sickle.png')
axes(handles.axes1);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\soilveg.png')

% Read current text and convert it to a number.
currentCounterInv1 = str2double(get(handles.carrotkg, 'String'));
% Create a new string with the number being 1 more than the current number.
newStringCarrot = sprintf('%d', int32(currentCounterInv1 +6));
% Send the new string to the text control.
set(handles.carrotkg, 'String', newStringCarrot );

% Read current text and convert it to a number.
currentCounterInv2 = str2double(get(handles.onionkg, 'String'));
% Create a new string with the number being 1 more than the current number.
newStringOnion = sprintf('%d', int32(currentCounterInv2 +6));
% Send the new string to the text control.
set(handles.onionkg, 'String', newStringOnion);

% Read current text and convert it to a number.
currentCounterInv3 = str2double(get(handles.tomatokg, 'String'));
% Create a new string with the number being 6 more than the current number.
newStringTomato = sprintf('%d', int32(currentCounterInv3 +6));
% Send the new string to the text control.
set(handles.tomatokg, 'String', newStringTomato);



% --- Executes on button press in sellbutton.
function sellbutton_Callback(hObject, eventdata, handles)
% hObject    handle to sellbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes2);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\market.png')
axes(handles.axes1);
imshow('C:\Users\cherish nicole\Documents\MATLAB\Simple Farming Game\soil2.png')

%Compute Carrots Sales at 112 per kg
% Read current text and convert it to a number.
currentCarrotsValue = str2double(get(handles.carrotkg, 'String'));
newCarrot = int32(currentCarrotsValue*112);

%Compute Onions Sales at 180 per kg
% Read current text and convert it to a number.
currentOnionsValue = str2double(get(handles.onionkg, 'String'));
newOnion = int32(currentOnionsValue*180);

%Compute Tomato Sales at 99 per kg
% Read current text and convert it to a number.
currentTomatosValue = str2double(get(handles.tomatokg, 'String'));
newTomato = int32(currentTomatosValue*99);

%Compute total earnings
totalEarnings=newOnion+newCarrot+newTomato;
set(handles.earning, 'String', totalEarnings);

%set inventory to 0 after selling
set(handles.carrotkg, 'String', 0);
set(handles.onionkg, 'String', 0);
set(handles.tomatokg, 'String', 0);

function carrotinv_Callback(hObject, eventdata, handles)
% hObject    handle to carrotinv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of carrotinv as text
%        str2double(get(hObject,'String')) returns contents of carrotinv as a double


% --- Executes during object creation, after setting all properties.
function carrotinv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to carrotinv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function onioninv_Callback(hObject, eventdata, handles)
% hObject    handle to onioninv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of onioninv as text
%        str2double(get(hObject,'String')) returns contents of onioninv as a double


% --- Executes during object creation, after setting all properties.
function onioninv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to onioninv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tomatoinv_Callback(hObject, eventdata, handles)
% hObject    handle to tomatoinv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tomatoinv as text
%        str2double(get(hObject,'String')) returns contents of tomatoinv as a double


% --- Executes during object creation, after setting all properties.
function tomatoinv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tomatoinv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
