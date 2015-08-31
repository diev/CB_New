unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DataModule, ComCtrls, Mask, MainLoanInfo, Grids, DBGrids,
  ExtCtrls, MainPortfelInfo, CheckLst, Adminka, Dosudebka, IniFiles, Organaizer, Menus;

type
  TUsersLogin = record
   Name:String;
   ID:Integer;
  end;
  TMainForm = class(TForm)
    MainPageControl: TPageControl;
    AllInfo: TTabSheet;
    LoansInfo: TTabSheet;
    MainLoansList: TDBGrid;
    pnlKredSum: TPanel;
    MainInfoPortfelSumRUR: TLabel;
    MainInfoPortfelSumUSD: TLabel;
    MainInfoPortfelSumEUR: TLabel;
    MainInfoPortfelSumUAH: TLabel;
    lbKredSumHeader: TLabel;
    pnlDebtSum: TPanel;
    lbDebtSumHeader: TLabel;
    MainInfoPortfelSumZRUR: TLabel;
    MainInfoPortfelSumZUSD: TLabel;
    MainInfoPortfelSumZEUR: TLabel;
    MainInfoPortfelSumZUAH: TLabel;
    pnlOutDateSum: TPanel;
    MainInfoPortfelSumTRUR: TLabel;
    MainInfoPortfelSumTUSD: TLabel;
    MainInfoPortfelSumTEUR: TLabel;
    MainInfoPortfelSumTUAH: TLabel;
    pnlPercentSum: TPanel;
    MainInfoPortfelSumPRUR: TLabel;
    MainInfoPortfelSumPUSD: TLabel;
    MainInfoPortfelSumPEUR: TLabel;
    MainInfoPortfelSumPUAH: TLabel;
    lbOutDateSumHeader: TLabel;
    lbPercentSumHeader: TLabel;
    Dosudebka: TTabSheet;
    pnlBefoJudPeriod: TPanel;
    lbBeforeJudPeriodHeader: TLabel;
    lbAddNewActionHeader: TLabel;
    pnlAddNewJudAction: TPanel;
    MemoDosudebka: TMemo;
    lbFullDescriptHeader: TLabel;
    MonthCalendarDosudebnoe: TMonthCalendar;
    lbEventDateActHeader: TLabel;
    ButtonDosudebkaAdd: TButton;
    ButtonDosudebkaEdit: TButton;
    ButtonDosudebkaDel: TButton;
    pnlKredInfo: TPanel;
    LoansInfoFIOLoaner: TLabel;
    LoansInfoAdres2Loader: TLabel;
    LoansInfoFoneLoader: TLabel;
    LoansInfoAdres1Loader: TLabel;
    LoansInfoPasDat: TLabel;
    LoansInfoPasNumoader: TLabel;
    LoansInfoINNLoader: TLabel;
    lbDebtInfoHeader: TLabel;
    pnlLoanInfo: TPanel;
    LoansInfoValLoans: TLabel;
    LoansInfoDateLoans: TLabel;
    LoansInfoSumValLoans: TLabel;
    LoansInfoDateEndLoans: TLabel;
    LoansInfoDebtLoans: TLabel;
    LoansInfoDebtNacValLoans: TLabel;
    LoansInfoDEBTOUTOFDATE: TLabel;
    LoansInfoDEBTOUTOFDATEEQ: TLabel;
    LoansInfoPERCENTOUTOFDATE: TLabel;
    LoansInfoPERCENTOUTOFDATEEQ: TLabel;
    LoansInfoCOMMISSIONAMOUNT: TLabel;
    lbLoanInfoHeader: TLabel;
    Admins: TTabSheet;
    EditBDSvazi: TPageControl;
    UsersVsLoans: TTabSheet;
    CheckListBoxAdminLoans: TCheckListBox;
    lbEmplAdmHeader: TLabel;
    lbLoanAdmHeader: TLabel;
    DBGridAdminUsersFromLOans: TDBGrid;
    LoansVsLoaner: TTabSheet;
    DBGridLoansLVSL: TDBGrid;
    DBGridLoanserLVsL: TDBGrid;
    lbLoanListHeader: TLabel;
    lbDebtHeader: TLabel;
    EditBDTable: TPageControl;
    Users: TTabSheet;
    Loans: TTabSheet;
    Loaner: TTabSheet;
    DBGridUsers: TDBGrid;
    DBGridLoans: TDBGrid;
    DBGridLoanser: TDBGrid;
    ButtonAddLVsL: TButton;
    DBGridDosudebkaList: TDBGrid;
    edLogin: TEdit;
    edPassword: TEdit;
    lbLogin: TLabel;
    lbPassword: TLabel;
    btnLogin: TButton;
    sbInfo: TStatusBar;
    btnChengePas: TButton;
    DBGridOrganaizer: TDBGrid;
    pnlBottom: TPanel;
    DBGrid1: TDBGrid;
    LoansInfoPoruchitel: TLabel;
    TabSheet1: TTabSheet;
    DBGridOrganaizerFul: TDBGrid;
    MonthCalendar1: TMonthCalendar;
    ButtonOrganaizerComplit: TButton;
    CheckBoxOrganaizerCompl: TCheckBox;
    TabSheetAdminkaKurses: TTabSheet;
    MonthCalendarAdmCurses: TMonthCalendar;
    EditAdmCursUsd: TEdit;
    EditAdmCursEur: TEdit;
    EditAdmCursUah: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonAdmCursAdd: TButton;
    ButtonAdmCursSave: TButton;
    MainInfoSumLoansEcv: TLabel;
    MainInfoSumZadEcv: TLabel;
    MainInfoSumprosEcv: TLabel;
    MainInfoSumProcEcv: TLabel;
    mnuFieldsSwitch: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnlLeft: TPanel;
    Splitter1: TSplitter;
    pnlShowPayd: TPanel;
    chbPaid: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure MainLoansListCellClick(Column: TColumn);
    procedure DBGridLoansLVSLCellClick(Column: TColumn);
    procedure DBGridLoanserLVsLCellClick(Column: TColumn);
    procedure ButtonAddLVsLClick(Sender: TObject);
    procedure ButtonDosudebkaAddClick(Sender: TObject);
    procedure DBGridDosudebkaListCellClick(Column: TColumn);
    procedure ButtonDosudebkaDelClick(Sender: TObject);
    procedure ButtonDosudebkaEditClick(Sender: TObject);
    procedure GetConnectionInfo();
    procedure btnLoginClick(Sender: TObject);
    procedure btnChengePasClick(Sender: TObject);
    procedure DBGridAdminUsersFromLOansCellClick(Column: TColumn);
    procedure CheckListBoxAdminLoansClickCheck(Sender: TObject);
    procedure MainLoansListDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CheckBoxOrganaizerComplClick(Sender: TObject);
    procedure ButtonOrganaizerComplitClick(Sender: TObject);
    procedure MonthCalendarAdmCursesClick(Sender: TObject);
    procedure ButtonAdmCursAddClick(Sender: TObject);
    procedure ButtonAdmCursSaveClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure chbPaidClick(Sender: TObject);
  private
    FUser_Name: String;
    FDriverId: String;
    FDataBase: String;
    FPassword: String;
    FServer: String;
    FPort: string;
    FIsLoginSuccessful: Boolean;
    FEURRate: Real;
    FUSDRate: Real;
    FUAHRate: Real;
    procedure SetDataBase(const Value: String);
    procedure SetDriverId(const Value: String);
    procedure SetPassword(const Value: String);
    procedure SetServer(const Value: String);
    procedure SetUser_Name(const Value: String);
    procedure SetPort(const Value: string);
    procedure SetIsLoginSuccessful(const Value: Boolean);
    procedure SetEURRate(const Value: Real);
    procedure SetUAHRate(const Value: Real);
    procedure SetUSDRate(const Value: Real);
    procedure LoginPO;
    procedure RefreshLoansList(IS_PAID: Boolean);
    procedure ClearLabelMainForm;
    { Private declarations }
    property DataBase: String read FDataBase write SetDataBase;
    property User_Name : String read FUser_Name write SetUser_Name;
    property Password : String read FPassword write SetPassword;
    property Server : String read FServer write SetServer;
    property DriverId : String read FDriverId write SetDriverId;
    property Port: string read FPort write SetPort;
    property IsLoginSuccessful : Boolean read FIsLoginSuccessful write SetIsLoginSuccessful;



    function SetRate():integer;

  public
    { Public declarations }
    property USDRate : Real read FUSDRate write SetUSDRate;
    property EURRate : Real read FEURRate write SetEURRate;
    property UAHRate : Real read FUAHRate write SetUAHRate;
  end;

var
  MainForm: TMainForm;
  mainLoanInfo : TMainLoanInfo;
  MainBagInfo : TMainPortfelInfo;
  Adminka:TMainAdminka;
  Dosudebnoe:TDosudebnoe;
  LoginUsers:TUsersLogin;
  Organaizer:TOrganaizer;

implementation




{$R *.dfm}

procedure RefreshOrganaizer;
Begin
 DMData.qrMainOrganaizer.Active:=False;
 DMData.qrMainOrganaizer.Params.ParamValues['ID_LOAN']:=DMData.qrLoanInfo.FieldByName('ID_LOAN').AsInteger;
 DMData.qrMainOrganaizer.Active:=True;
End;
procedure TMainForm.MainLoansListCellClick(Column: TColumn);
begin
 MainLoanInfo.MainLoanInfoLoadData;
 Dosudebnoe.RefreshList;
 RefreshOrganaizer;
end;

procedure TMainForm.MainLoansListDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Assigned(Column) then
   begin
        MainLoansList.Canvas.FillRect(Rect);
        MainLoansList.Canvas.TextRect(Rect,Rect.Left,Rect.Top,' '+Column.Field.AsString);
   end;
end;

procedure TMainForm.MonthCalendarAdmCursesClick(Sender: TObject);
begin
 Adminka.LoadCurses;
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
  MainLoansList.Columns[0].FieldName := 'fio';
  MainLoansList.Columns[0].Title.Caption := '������� ��� ��������';
  mnuFieldsSwitch.Items[0].Checked := True;
  mnuFieldsSwitch.Items[1].Checked := False;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  MainLoansList.Columns[0].FieldName := 'AGREEMENT_NUM';
  MainLoansList.Columns[0].Title.Caption := '����� ��������';
  mnuFieldsSwitch.Items[0].Checked := False;
  mnuFieldsSwitch.Items[1].Checked := True;
end;

procedure TMainForm.SetDataBase(const Value: String);
begin
  FDataBase := Value;
end;

procedure TMainForm.SetDriverId(const Value: String);
begin
  FDriverId := Value;
end;

procedure TMainForm.SetEURRate(const Value: Real);
begin
  FEURRate := Value;
end;

procedure TMainForm.SetIsLoginSuccessful(const Value: Boolean);
begin
  FIsLoginSuccessful := Value;
end;

procedure TMainForm.SetPassword(const Value: String);
begin
  FPassword := Value;
end;

procedure TMainForm.SetPort(const Value: string);
begin
  FPort := Value;
end;

function TMainForm.SetRate: integer;
begin
  with DMData do begin
    qrGetCurrency.Active :=  False;
    qrGetCurrency.ParamByName('CURR_CODE').Value := '980';
    SafeExecuteDatasetVoidMethod(qrGetCurrency.Open);
    UAHRate := qrGetCurrency.FieldByName('CURR_RATE').AsFloat;

    qrGetCurrency.Active :=  False;
    qrGetCurrency.ParamByName('CURR_CODE').Value := '978';
    SafeExecuteDatasetVoidMethod(qrGetCurrency.Open);
    EURRate := qrGetCurrency.FieldByName('CURR_RATE').AsFloat;

    qrGetCurrency.Active :=  False;
    qrGetCurrency.ParamByName('CURR_CODE').Value := '840';
    SafeExecuteDatasetVoidMethod(qrGetCurrency.Open);
    USDRate := qrGetCurrency.FieldByName('CURR_RATE').AsFloat;

  end; //with
end;

procedure TMainForm.SetServer(const Value: String);
begin
  FServer := Value;
end;

procedure TMainForm.SetUAHRate(const Value: Real);
begin
  FUAHRate := Value;
end;

procedure TMainForm.SetUSDRate(const Value: Real);
begin
  FUSDRate := Value;
end;

procedure TMainForm.SetUser_Name(const Value: String);
begin
  FUser_Name := Value;
end;

procedure TMainForm.ButtonDosudebkaAddClick(Sender: TObject);
begin
 Dosudebnoe.AddAction;
end;

procedure TMainForm.ButtonDosudebkaDelClick(Sender: TObject);
begin
 Dosudebnoe.DelSelectedItem;
end;

procedure TMainForm.ButtonDosudebkaEditClick(Sender: TObject);
begin
 Dosudebnoe.EditSelectedItem;
end;

procedure TMainForm.ButtonOrganaizerComplitClick(Sender: TObject);
begin
 Organaizer.Complited;
end;

procedure TMainForm.chbPaidClick(Sender: TObject);
begin
   RefreshLoansList(chbPaid.Checked);
end;

procedure TMainForm.CheckBoxOrganaizerComplClick(Sender: TObject);
begin
 Organaizer.ChengeComplited;
end;

procedure TMainForm.CheckListBoxAdminLoansClickCheck(Sender: TObject);
begin
 Adminka.ADDBaseLoansList;
end;

procedure TMainForm.RefreshLoansList(IS_PAID: Boolean);
Begin
 MainForm.SetRate();

 DMData.qrLoanInfo.Active := False;
 DMData.qrLoanInfo.Params.ParamByName('ID_USER').AsInteger := LoginUsers.ID;
 if (IS_PAID) then  begin
    DMData.qrLoanInfo.Params.ParamByName('PAID1').AsBoolean := True;
    DMData.qrLoanInfo.Params.ParamByName('PAID2').AsBoolean := False;
 end else begin
    DMData.qrLoanInfo.Params.ParamByName('PAID1').AsBoolean := False;
    DMData.qrLoanInfo.Params.ParamByName('PAID2').AsBoolean := False;
 end;
 DMData.SafeExecuteDatasetVoidMethod(DMData.qrLoanInfo.Open);
 DMData.qrLoanInfo.First;

 DMData.SafeExecuteDatasetVoidMethod(DMData.TableUsers.Open);
 DMData.SafeExecuteDatasetVoidMethod(DMData.TableLoans.Open);
 DMData.SafeExecuteDatasetVoidMethod(DMData.TableLoanser.Open);
 DMData.SafeExecuteDatasetVoidMethod(DMData.qrOrganaizerFul.Open);
 MainBagInfo.MainLoanPortfelLoadData;
 Adminka.LoadLoansList;
 RefreshOrganaizer;

End;

procedure TMainForm.ClearLabelMainForm;
Begin
     MainInfoPortfelSumRUR.Caption:='';
     MainInfoPortfelSumUSD.Caption:='';
     MainInfoPortfelSumEUR.Caption:='';
     MainInfoPortfelSumUAH.Caption:='';
     MainInfoPortfelSumZRUR.Caption:='';
     MainInfoPortfelSumZUSD.Caption:='';
     MainInfoPortfelSumZEUR.Caption:='';
     MainInfoPortfelSumZUAH.Caption:='';
     MainInfoPortfelSumTRUR.Caption:='';
     MainInfoPortfelSumTUSD.Caption:='';
     MainInfoPortfelSumTEUR.Caption:='';
     MainInfoPortfelSumTUAH.Caption:='';
     MainInfoPortfelSumPRUR.Caption:='';
     MainInfoPortfelSumPUSD.Caption:='';
     MainInfoPortfelSumPEUR.Caption:='';
     MainInfoPortfelSumPUAH.Caption:='';
     LoansInfoFIOLoaner.Caption:='';
     LoansInfoINNLoader.Caption:='';
     LoansInfoPasNumoader.Caption:='';
     LoansInfoPasDat.Caption:='';
     LoansInfoAdres1Loader.Caption:='';
     LoansInfoAdres2Loader.Caption:='';
     LoansInfoFoneLoader.Caption:='';
     LoansInfoDateLoans.Caption:='';
     LoansInfoSumValLoans.Caption:='';
     LoansInfoValLoans.Caption:='';
     LoansInfoDateEndLoans.Caption:='';
     LoansInfoDebtLoans.Caption:='';
     LoansInfoDebtNacValLoans.Caption:='';
     LoansInfoDEBTOUTOFDATE.Caption:='';
     LoansInfoDEBTOUTOFDATEEQ.Caption:='';
     LoansInfoPERCENTOUTOFDATE.Caption:='';
     LoansInfoPERCENTOUTOFDATEEQ.Caption:='';
     LoansInfoCOMMISSIONAMOUNT.Caption:='';
     LoansInfoPoruchitel.Caption:='';
     MainInfoSumLoansEcv.Caption := '';
     MainInfoSumZadEcv.Caption := '';
     MainInfoSumprosEcv.Caption := '';
     MainInfoSumProcEcv.Caption := '';
End;

procedure TMainForm.LoginPO;
var
 sLogin : String;
 sPassword : String;
Begin
 if MainForm.IsLoginSuccessful = False then
 Begin
  if ((Trim(MainForm.edLogin.Text)='') OR (Trim(MainForm.edPassword.Text)='') ) then
   ShowMessage('���� �����  ��� ������  �� ����� ����  �������!')
  else begin
   sLogin := MainForm.edLogin.Text;
   sPassword := MainForm.edPassword.Text;
   DMData.qrLogin.Active := False;
   DMData.qrLogin.Params.ParamByName('PRMUSERLOGIN').AsString := sLogin;
   DMData.qrLogin.Params.ParamByName('USER_PASSWORD').AsString := sPassword;
   DMData.qrLogin.Active := True;
   if DMData.qrLogin.Eof =False then
   Begin
    LoginUsers.Name:=DMData.qrLogin.FieldByName('FIRSTNAME').AsString;
    LoginUsers.ID:=DMData.qrLogin.FieldByName('ID_USER').AsInteger;
    RefreshLoansList(chbPaid.Checked);
    MainLoanInfo.MainLoanInfoLoadData();
    MainForm.btnLogin.Caption:='�����';
    MainForm.IsLoginSuccessful := True;
    MainForm.btnChengePas.Enabled:=True;
   End;
   If DMData.qrLogin.FieldByName('IS_ADMIN').AsBoolean = True then MainForm.MainPageControl.Pages[3].TabVisible:=True;
   DMData.qrLogin.Active := False;
    //DMData.SafeExecuteDatasetVoidMethod(DMData.qrLoanInfo.Open);
  end;//if - else
 End else
 {if MainForm.IsLoginSuccessful = True then}
 Begin
  LoginUsers.Name:='';
  LoginUsers.ID:=0;
  RefreshLoansList(chbPaid.Checked);
  MainForm.btnLogin.Caption:='����';
  MainForm.btnChengePas.Enabled:=False;
  MainForm.IsLoginSuccessful := False;
  ClearLabelMainForm;
  MainForm.MainPageControl.Pages[3].TabVisible:=False;
 End;
End;

procedure ChengePassword;
Begin
 if MainForm.edPassword.Text='' then ShowMessage('���� �����  ��� ������  �� ����� ����  �������!');
 if MainForm.edPassword.Text<>'' then
 begin
  DMData.qrchengepass.Params.ParamValues['USER_PASSWORD']:=MainForm.edPassword.Text;
  DMData.qrchengepass.Params.ParamValues['ID_USER']:=LoginUsers.ID;
  DMData.qrchengepass.ExecSQL;
  ShowMessage('������ ������� �������!');
 end;

End;

procedure TMainForm.btnChengePasClick(Sender: TObject);
begin
 ChengePassword;
end;

procedure TMainForm.btnLoginClick(Sender: TObject);
begin
 LoginPO;
end;

procedure TMainForm.ButtonAddLVsLClick(Sender: TObject);
begin
 Adminka.LoansVsLoanserButtonDelete;
end;

procedure TMainForm.ButtonAdmCursAddClick(Sender: TObject);
begin
 Adminka.AddCurses;
end;

procedure TMainForm.ButtonAdmCursSaveClick(Sender: TObject);
begin
 Adminka.EditCurses;
end;

procedure TMainForm.DBGrid1CellClick(Column: TColumn);
begin
 mainLoanInfo.MainLoanInfoMultiLoadDebtor;
end;

procedure TMainForm.DBGridAdminUsersFromLOansCellClick(Column: TColumn);
begin
 Adminka.RefreshLoansList;
end;

procedure TMainForm.DBGridDosudebkaListCellClick(Column: TColumn);
begin
 Dosudebnoe.LoadSelectedItem;
end;

procedure TMainForm.DBGridLoanserLVsLCellClick(Column: TColumn);
begin
 Adminka.LoansVsLoanserButtonName;
end;

procedure TMainForm.DBGridLoansLVSLCellClick(Column: TColumn);
begin
 Adminka.LoansVsLoanserButtonName;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  //�������������  ����   ��������� ������ � False ���������  ������ ������� ����
  IsLoginSuccessful := False;
  btnLogin.Caption := '����';
  btnChengePas.Enabled:=False;
  chbPaid.Checked := False;
  ClearLabelMainForm;
  MainPageControl.ActivePageIndex := 0;

  GetConnectionInfo();
  DMData.conCredittDB.Connected := False;
  DMData.conCredittDB.Params.Clear;
  DMData.conCredittDB.Params.Add('DriverID='+DriverId);
  DMData.conCredittDB.Params.Add('Database='+DataBase);
  DMData.conCredittDB.Params.Add('Server='+ Server);
  DMData.conCredittDB.Params.Add('Password='+Password);
  DMData.conCredittDB.Params.Add('User_Name='+User_Name);
  DMData.conCredittDB.Params.Add('Port='+Port);
  try
    DMData.conCredittDB.Connected := True;
  except on E: Exception do
    ShowMessage('�� ����� ������������ � ��  ��������� ������: '+E.Message);
  end;
  MainPageControl.Pages[3].TabVisible:=False;
  {
  try
    if NOT DMData.qrLoanInfo.Active then DMData.qrLoanInfo.Active;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
   }
  {��������� ��}
  {
  DMData.qrLoanInfo.Active:=True;
  DMData.TableUsers.Active:=True;
  DMData.TableLoans.Active:=True;
  DMData.TableLoanser.Active:=True;

  MainBagInfo.MainLoanPortfelLoadData;
  }

  //MainLoanInfo:= TMainLoanInfo.Create();
  //sl := TStringList.Create();
  //sl:= MainLoanInfo.GetLoanList();
  //LoansList.Items := sl;
  //DMData.MainRefreshLoansList;
end;

procedure TMainForm.GetConnectionInfo;
var
  fINI :TIniFile;
  sFilePath :  String;
begin
  sFilePath := GetCurrentDir+'\cred.ini';
  fINI := TIniFile.Create(sFilePath);
  if FileExists(sFilePath) then begin
    try
      DataBase := fINI.ReadString('CONNECT_PARAMS','DataBase','');
      User_Name := fINI.ReadString('CONNECT_PARAMS','User_Name','');
      Password := fINI.ReadString('CONNECT_PARAMS','Password','');
      Server := fINI.ReadString('CONNECT_PARAMS','Server','');
      DriverId := fINI.ReadString('CONNECT_PARAMS','DriverID','');
      Port := fINI.ReadString('CONNECT_PARAMS','Port','');
    finally
      fINI.Free;
    end;
  end else begin
    try
      fINI.WriteString('CONNECT_PARAMS','DataBase','database');
      fINI.WriteString('CONNECT_PARAMS','User_Name','User_Name');
      fINI.WriteString('CONNECT_PARAMS','Password','Password');
      fINI.WriteString('CONNECT_PARAMS','Server','Server');
      fINI.WriteString('CONNECT_PARAMS','DriverID','DriverID');
      fINI.WriteString('CONNECT_PARAMS','Port','Port');
    finally
      fINI.Free;
    end;
  end;    //if - else  FileExist

end;

end.
