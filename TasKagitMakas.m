function varargout = TasKagitMakas(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TasKagitMakas_OpeningFcn, ...
                   'gui_OutputFcn',  @TasKagitMakas_OutputFcn, ...
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
function TasKagitMakas_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
handles.t=0;
handles.k=0;



guidata(hObject, handles);


function varargout = TasKagitMakas_OutputFcn(hObject, eventdata, handles) 



varargout{1} = handles.output;


 

function pushbutton1_Callback(hObject, eventdata, handles)


function pushbutton2_Callback(hObject, eventdata, handles)


function pushbutton3_Callback(hObject, eventdata, handles)

oyun=['T','K','M'];

for i=1:5
    
    x=round(1+2*rand(1));
    y=round(1+2*rand(1));
    
    if x==1
        a='TAÞ';
    elseif x==2
        a='KAÐIT';
    elseif x==3
        a='MAKAS';
    end
    
     if y==1
        b='TAÞ';
    elseif y==2
        b='KAÐIT';
     elseif y==3 
        b='MAKAS';
     end
   
     set(handles.text10,'String',a);
     set(handles.text11,'String',b);
end

if ((x==1 && y==3) || (x==2 && y==1) ||(x==3 && y==2) )
     
    handles.t=handles.t+1;
    

elseif x==y        
    
else
   handles.k=handles.k+1;
    
end

set(handles.text12,'String',handles.t);
set(handles.text13,'String',handles.k);

if handles.t==3 || handles.k==3
   
    if handles.t>handles.k
        
    set(handles.text8,'String','1. OYUNCU KAZANDI');
    
    elseif handles.k>handles.t
        
        set(handles.text8,'String','2. OYUNCU KAZANDI');   
    end
end
guidata(hObject, handles);

   
