unit ufMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation, FMX.MultiView, FMX.Edit,
  FMX.TabControl, System.Actions, FMX.ActnList;

type
  TForm1 = class(TForm)
    MultiView1: TMultiView;
    Layout1: TLayout;
    toolbarMain: TToolBar;
    rctMenuTop: TRectangle;
    VertScrollBox1: TVertScrollBox;
    Rectangle1: TRectangle;
    Image1: TImage;
    Label1: TLabel;
    rctPrincipalMenu: TRectangle;
    Rectangle2: TRectangle;
    Image2: TImage;
    Label2: TLabel;
    Rectangle3: TRectangle;
    Image3: TImage;
    Label3: TLabel;
    Line1: TLine;
    Circle1: TCircle;
    Label4: TLabel;
    Label5: TLabel;
    Rectangle4: TRectangle;
    sbMenu: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    actMain: TChangeTabAction;
    TabControl1: TTabControl;
    tabLogin: TTabItem;
    Rectangle5: TRectangle;
    Layout2: TLayout;
    lblLoginEmail: TLabel;
    edtLoginEmail: TEdit;
    lblLoginSenha: TLabel;
    edtLoginSenha: TEdit;
    btnLoginAcessar: TSpeedButton;
    Image4: TImage;
    tabMain: TTabItem;
    Rectangle6: TRectangle;
    Label6: TLabel;
    Label7: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Label8: TLabel;
    Label9: TLabel;
    Layout5: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    Layout6: TLayout;
    Image5: TImage;
    Image6: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginAcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnLoginAcessarClick(Sender: TObject);
begin
  actMain.ExecuteTarget(sender);
  toolbarMain.Visible := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab := tabLogin;
  TabControl1.TabPosition := TTabPosition.None;
  toolbarMain.Visible := false;
end;

end.
