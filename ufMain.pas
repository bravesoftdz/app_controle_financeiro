unit ufMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation, FMX.MultiView, FMX.Edit,
  FMX.TabControl, System.Actions, FMX.ActnList, FMX.ListBox, udmMain,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.ImageList, FMX.ImgList;

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
    btnMenu: TSpeedButton;
    btnAdicionar: TSpeedButton;
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
    tabLancamento: TTabItem;
    lblMain: TLabel;
    Rectangle7: TRectangle;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Rectangle8: TRectangle;
    ListBox1: TListBox;
    Layout7: TLayout;
    Layout8: TLayout;
    Label13: TLabel;
    Label14: TLabel;
    Layout9: TLayout;
    Label15: TLabel;
    Label16: TLabel;
    actLancamentos: TChangeTabAction;
    tabCategoria: TTabItem;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    actCategoria: TChangeTabAction;
    Rectangle9: TRectangle;
    Image7: TImage;
    Label17: TLabel;
    tabCategoriaCad: TTabItem;
    actCategoriaCad: TChangeTabAction;
    Label18: TLabel;
    edtDescCategoria: TEdit;
    btnVoltar: TSpeedButton;
    LinkControlToField1: TLinkControlToField;
    listCategoria: TListView;
    LinkListControlToField2: TLinkListControlToField;
    btnSalvar: TSpeedButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginAcessarClick(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure listCategoriaItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangeTabaction(Action: TChangeTabAction; MainToolBarVisible: Boolean = True);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnLoginAcessarClick(Sender: TObject);
begin
//  actMain.ExecuteTarget(sender);
//  toolbarMain.Visible := true;
  ChangeTabaction(actMain);
end;

procedure TForm1.ChangeTabaction(Action: TChangeTabAction;
  MainToolBarVisible: Boolean);
begin
  MultiView1.HideMaster;
  Action.ExecuteTarget(TObject(Action));
  toolbarMain.Visible := MainToolBarVisible;
  lblMain.Text := Action.Tab.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab := tabLogin;
  TabControl1.TabPosition := TTabPosition.None;
  toolbarMain.Visible := false;
end;

procedure TForm1.listCategoriaItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  if dmMain.qryCategoria.Active then begin
    dmMain.qryCategoria.Edit;
  end;
  ChangeTabaction(actCategoriaCad);
end;

procedure TForm1.Rectangle1Click(Sender: TObject);
begin
  ChangeTabaction(actLancamentos);

end;

procedure TForm1.Rectangle2Click(Sender: TObject);
begin
   ChangeTabaction(actMain);
end;

procedure TForm1.Rectangle3Click(Sender: TObject);
begin
  dmMain.qryCategoria.Close;
  dmMain.qryCategoria.Open;
  ChangeTabaction(actCategoria);
end;

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
  if dmMain.qryCategoria.State in dsEditModes then begin
    dmMain.qryCategoria.Post;
  end;
  ChangeTabaction(actCategoria);
end;

procedure TForm1.btnVoltarClick(Sender: TObject);
begin
  if dmMain.qryCategoria.State in dsEditModes then begin
    dmMain.qryCategoria.Edit;
  end;
  ChangeTabaction(actCategoria);
end;

end.
