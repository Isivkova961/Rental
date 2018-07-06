unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls,ComObj;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    docof: TRadioGroup;
    Label21: TLabel;
    DateDoc: TDateTimePicker;
    Label22: TLabel;
    Date_beg: TDateTimePicker;
    Time_beg: TDateTimePicker;
    Label23: TLabel;
    Date_end: TDateTimePicker;
    Time_end: TDateTimePicker;
    Label24: TLabel;
    rent_num: TEdit;
    rent_rub: TLabel;
    Label25: TLabel;
    assval_num: TEdit;
    assval_rub: TLabel;
    company_n: TLabel;
    Company_ed: TEdit;
    director_n: TLabel;
    director_ed: TEdit;
    INN_n: TLabel;
    INN_ed: TEdit;
    KPP_n: TLabel;
    KPP_ed: TEdit;
    OKPO_n: TLabel;
    OKPO_ed: TEdit;
    legalad_n: TLabel;
    legalad_ed: TEdit;
    mailad_n: TLabel;
    mailad_ed: TEdit;
    tel_n: TLabel;
    tel_ed: TMaskEdit;
    bank_n: TLabel;
    bank_ed: TEdit;
    rs_n: TLabel;
    rs_ed: TEdit;
    ks_n: TLabel;
    ks_ed: TEdit;
    BIK_n: TLabel;
    BIK_ed: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    num_doc: TEdit;
    Button1: TButton;
    Label9: TLabel;
    director_ed1: TEdit;
    Panel1: TPanel;
    FIO_n: TLabel;
    FIO_ed: TEdit;
    adpr_n: TLabel;
    adpr_ed: TEdit;
    document_n: TLabel;
    document_ed: TEdit;
    ser_n: TLabel;
    ser_ed: TEdit;
    num_n: TLabel;
    num_ed: TEdit;
    vidan_n: TLabel;
    datevid_ed: TMaskEdit;
    datevid_n: TLabel;
    vidan_ed: TEdit;
    telef_n: TLabel;
    telef_ed: TEdit;
    procedure numprop(var rubl:string);
    procedure rent_numExit(Sender: TObject);
    procedure assval_numExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ReplaceField(const ADocument: OleVariant);
    procedure datepreob;
    procedure FormCreate(Sender: TObject);
    procedure checkup;
    procedure FormShow(Sender: TObject);
    procedure director_edExit(Sender: TObject);
    procedure docofClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Checkupdate;
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NumEd:array [1..19] of string=('один','два','три','четыре','пять','шесть','семь','восемь','девять','десять','одиннадцать','двенадцать','тринадцать','четырнадцать','пятнадцать','шестнадцать','семнадцать','восемнадцать','девятнадцать');
  NumEd1:array [1..2] of string=('одна','две');
  NumDec:array [2..9] of string=('двадцать','тридцать','сорок','пятьдесят','шестьдесят','семьдесят','восемьдесят','девяносто');
  NumSot:array [1..9] of string=('сто','двести','триста','четыреста','пятьсот','шестьсот','семьсот','восемьсот','девятьсот');
  XLion0:array [1..3] of string=('тысяч','миллионов','миллиардов');
  XLion1:array [1..3] of string=('тысяча','миллион','миллиард');
  XLion2:array [1..3] of string=('тысячи','миллиона','миллиарда');
  Rub:array[1..3] of string=('рубль','рубля','рублей');
mes:array [1..12] of string=('января','февраля','марта','апреля','мая','июня','июля','августа','сентября','октября','ноября','декабря');
  mm:TStringList;
  num,numer:integer;
  datedoc1:string;
implementation

{$R *.dfm}

procedure TForm1.numprop(var rubl:string);
var
  rub1,rub2:string;
  i,int,k:integer;
begin
  numer:=num;
  i:=-1;
  k:=0;
  rub1:='';
  rub2:='';
  while num>0 do
    begin
      k:=k+1;
      numer:=num mod 1000;
      num:=num div 1000;
      i:=i+1;
          if (numer div 100)>0 then
            begin
              int:=numer div 100;
              numer:=numer mod 100;
              rub1:=rub1+numsot[int]+' ';
            end;
          if numer>=20 then
            begin
              if (numer div 10)>0 then
                begin
                  int:=numer div 10;
                  numer:=numer mod 10;
                  if numer>0 then
                    if (numer<3) and (i=1) then
                      rub1:=rub1+numdec[int]+' '+NumEd1[numer]+' '
                    else
                      rub1:=rub1+numdec[int]+' '+NumEd[numer]+' '
                  else
                    rub1:=rub1+numdec[int]+' ';
                end;
            end
          else
            if (numer<20) and (numer>2) then
              rub1:=rub1+NumEd[numer]+' '
            else
              if (numer<3) and (numer>0) and (i=1) then
                rub1:=rub1+NumEd1[numer]+' '
              else
                if (numer<3) and (numer>0) and (i<>1) then
                  rub1:=rub1+NumEd[numer]+' ';
            if k>1 then
              if i>0 then
                if rub1<>'' then
                begin
                  if numer=1 then
                    rub1:=rub1+XLion1[i]+' ';
                  if (numer>1) and (numer<5) then
                    rub1:=rub1+XLion2[i]+' ';
                  if (numer>=5) or (numer=0) then
                    rub1:=rub1+XLion0[i]+' ';
                end;
            if k=1 then
              begin
                if numer=1 then
                  rub2:=rub[1]
                else
                  if (numer>1) and (numer<5) then
                    rub2:=rub[2]
                  else
                    if (numer>=5) or (numer=0) then
                      rub2:=rub[3];
              end;
          rub2:=rub1+rub2;
          rub1:='';
    end;
  rubl:=copy(rub2,2,length(rub2));
  rub2:=copy(rub2,1,1);
  rub2:=AnsiUpperCase(rub2);
  rubl:=rub2+rubl;
end;

procedure TForm1.rent_numExit(Sender: TObject);
var rub1:string;
begin
  if rent_num.text<>'' then
    begin
      num:=strtoint(rent_num.text);
      numprop(rub1);
      rent_rub.Caption:=rub1;
    end;
end;

procedure TForm1.assval_numExit(Sender: TObject);
var rub1:string;
begin
  if assval_num.text<>'' then
    begin
      num:=strtoint(assval_num.text);
      numprop(rub1);
      assval_rub.Caption:=rub1;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var TempleateFileName: string;
  WordApp, Document: OleVariant;
  path:string;
begin
  checkup;
  if docof.ItemIndex=0 then
    path:='Договор_ИП'
  else
    if docof.ItemIndex=1 then
      path:='Договор_ФЛ';
TempleateFileName := ExtractFilePath(Application.ExeName) + 'шаблоны/'+path+'.docx';
    try
      // Если нет то запускаем
      WordApp := CreateOleObject('Word.Application');
    except
      on E: Exception do
      begin
        ShowMessage('Не удалось запустить Word!'#13#10 + E.Message);
        Exit;
      end;
    end;
  //end;

  try
    Screen.Cursor := crHourGlass;

    // Создание нового документа на основе шаблона
    Document := WordApp.Documents.Add(Template := TempleateFileName, NewTemplate := False);

    // Заменяем закладки на данные
    datepreob;
    ReplaceField(Document);

    // По умолчание окно Word скрыто, делаем его видимым с готовым отчетом
    WordApp.Visible := True;

  finally
    // Необходимо для удаления экземпляра Word.
    WordApp := Unassigned;

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.ReplaceField(const ADocument: OleVariant);
var
  i,j: Integer;
  BookmarkName: string;
  Range,range1,pars: OleVariant;
  s,s1,s2:string;
  function CompareBm(ABmName: string; const AName: string): Boolean;
  var
    i: Integer;
  begin
    i := Pos('_', ABmName);
    if i > 0 then
      Delete(ABmName, i, Length(ABmName) - i + 1);

    Result := SameText(ABmName, AName);
  end;
 
begin
  for i := ADocument.Bookmarks.Count downto 1 do
  begin
    BookmarkName := ADocument.Bookmarks.Item(i).Name;
    Range := ADocument.Bookmarks.Item(i).Range;
    Range1 := ADocument.Bookmarks.Item(i).Range;
    pars:=ADocument.Paragraphs;
    if CompareBm(BookmarkName, 'Номердоговора') then
      Range.Text := num_doc.Text
    else
    if CompareBm(BookmarkName, 'Датадоговора') then
      Range.Text := DateDoc1
    else
    if CompareBm(BookmarkName, 'Директор') then
      Range.Text := director_ed.Text
    else
    if CompareBm(BookmarkName, 'Директор3') then
      Range.Text := director_ed1.Text
    else
    if CompareBm(BookmarkName, 'Директор2') then
      begin
      s:=director_ed.text;
      s1:=copy(s,pos(' ',s)+1,length(s)-pos(' ',s));
      s2:=copy(s1,pos(' ',s1)+1,length(s1)-pos(' ',s1));
      Range.Text := copy(s,1,pos(' ',s))+copy(s1,1,1)+'.'+copy(s2,1,1)+'.';
      end
    else
    if CompareBm(BookmarkName, 'Датаначала') then
      Range.Text := datetostr(date_beg.Date)
    else
    if CompareBm(BookmarkName, 'Датаконца') then
      Range.Text := datetostr(date_end.date)
    else
    if CompareBm(BookmarkName, 'Времяначала') then
      begin
      Range.Text := copy(timetostr(time_beg.Time),1,5);
      end
    else
    if CompareBm(BookmarkName, 'Времяконца') then
      Range.Text := copy(timetostr(time_end.Time),1,5)
    else
    if CompareBm(BookmarkName, 'Аренднаяплата') then
      Range.Text := rent_num.Text
    else
    if CompareBm(BookmarkName, 'Аренднаяпропись') then
      Range.Text := rent_rub.caption
    else
    if CompareBm(BookmarkName, 'Оценочнаястоимость') then
      Range.Text := assval_num.Text
    else
    if CompareBm(BookmarkName, 'Оценочнаяпропись') then
      Range.Text := assval_rub.Caption
    else
    if CompareBm(BookmarkName, 'Предприятие') then
      Range.Text := company_ed.Text
    else
    if CompareBm(BookmarkName, 'ИНН1') then
      begin
        if inn_ed.Text='' then
        Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'ИНН') then
      Range.Text := inn_ed.Text
    else
    if CompareBm(BookmarkName, 'КПП1') then
      begin
        if kpp_ed.Text='' then
        Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'КПП') then
      Range.Text := '/'+kpp_ed.Text
    else
    if CompareBm(BookmarkName, 'ОКПО1') then
      begin
      if okpo_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'ОКПО') then
      Range.Text := okpo_ed.Text
    else
    if CompareBm(BookmarkName, 'Юрадрес1') then
      begin
      if legalad_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Юрадрес') then
      Range.Text := legalad_ed.Text
    else
    if CompareBm(BookmarkName, 'Почтовыйадрес1') then
      begin
      if mailad_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Почтовыйадрес') then
      Range.Text := mailad_ed.Text
    else
    if CompareBm(BookmarkName, 'Телефон1') then
      begin
      if docof.ItemIndex=0 then
        begin
        if tel_ed.Text='' then
          Range.delete;
        end
      else
      if telef_ed.Text='' then
      range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Телефон') then
      begin
      if docof.ItemIndex=0 then
      Range.Text := tel_ed.Text
      else
      range.text:=telef_ed.Text;
      end
    else
    if CompareBm(BookmarkName, 'Банк1') then
      begin
      if bank_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Банк') then
      Range.Text := bank_ed.Text
    else
    if CompareBm(BookmarkName, 'Рс1') then
      begin
      if rs_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Рс') then
      Range.Text := rs_ed.Text
    else
    if CompareBm(BookmarkName, 'Кс1') then
      begin
      if ks_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Кс') then
      Range.Text := ks_ed.Text
    else
    if CompareBm(BookmarkName, 'БИК1') then
      begin
      if bik_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'БИК') then
      Range.Text := bik_ed.Text
    else
    if CompareBm(BookmarkName, 'ФИО') then
      Range.Text := FIO_ed.Text
    else
    if CompareBm(BookmarkName, 'ФИО1') then
      begin
      s:=FIO_ed.text;
      s1:=copy(s,pos(' ',s)+1,length(s)-pos(' ',s));
      s2:=copy(s1,pos(' ',s1)+1,length(s1)-pos(' ',s1));
      Range.Text := copy(s,1,pos(' ',s))+copy(s1,1,1)+'.'+copy(s2,1,1)+'.';
      end
    else
    if CompareBm(BookmarkName, 'Прописка1') then
      begin
      if adpr_ed.Text='' then
        range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Прописка') then
      Range.Text :=adpr_ed.Text
    else
    if CompareBm(BookmarkName, 'Документ1') then
      begin
      if document_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Документ') then
      Range.Text := document_ed.Text
    else
    if CompareBm(BookmarkName, 'Серия1') then
      begin
      if ser_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Серия') then
      Range.Text := ser_ed.Text
    else
    if CompareBm(BookmarkName, 'Номер1') then
      begin
      if num_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Номер') then
      Range.Text := num_ed.Text
    else
    if CompareBm(BookmarkName, 'Выдан1') then
      begin
      if vidan_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Выдан') then
      Range.Text := vidan_ed.Text
    else
    if CompareBm(BookmarkName, 'Датавыдачи1') then
      begin
      if datevid_ed.Text='' then
      Range.delete;
      end
    else
    if CompareBm(BookmarkName, 'Датавыдачи') then
      Range.Text := datevid_ed.Text
    else
   if CompareBm(BookmarkName, 'Леса') then
    begin
      if mm.Count>0 then
        begin
          range.text:=mm[0];
          for j:=1 to mm.Count-1 do
            begin
              range.insertAfter(#13+#10);
              range.insertAfter(mm[j]);
            end;
        end;
    end;

  end;
end;

procedure TForm1.datepreob;
var s,d,m,g:string;

    mm:integer;

begin
  s:=datetostr(datedoc.Date);
  d:=copy(s,1,pos('.',s)-1);
  delete(s,1,pos('.',s));
  m:=copy(s,1,pos('.',s)-1);
  delete(s,1,pos('.',s));
  g:=s;
  mm:=strtoint(m);
  datedoc1:='"'+d+'" '+mes[mm]+' '+g+'г.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mm:=TStringList.Create;
end;

procedure TForm1.checkup;
begin
  if checkbox1.Checked=true then
    mm.Append(checkbox1.Caption+' ,'+edit1.Text+' шт.');
  if checkbox2.Checked=true then
    mm.Append(checkbox2.Caption+' ,'+edit2.Text+' шт.');
  if checkbox3.Checked=true then
    mm.Append(checkbox3.Caption+' ,'+edit3.Text+' шт.');
  if checkbox4.Checked=true then
    mm.Append(checkbox4.Caption+' ,'+edit4.Text+' шт.');
  if checkbox5.Checked=true then
    mm.Append(checkbox5.Caption+' ,'+edit5.Text+' шт.');
  if checkbox6.Checked=true then
    mm.Append(checkbox6.Caption+' ,'+edit6.Text+' шт.');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  docof.ItemIndex:=0;
  date_beg.Date:=date;
  date_end.Date:=date;
  datedoc.Date:=date;
end;

procedure TForm1.director_edExit(Sender: TObject);
begin
director_ed1.Text:=director_ed.Text;
end;

procedure TForm1.docofClick(Sender: TObject);
begin
if docof.ItemIndex=0 then
 panel1.Visible:=false
else
  panel1.Visible:=true;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  checkupdate;
end;

procedure TForm1.Checkupdate;
begin
  if checkbox1.Checked=true then
    edit1.Enabled:=true
  else
    edit1.Enabled:=false;
  if checkbox2.Checked=true then
    edit2.Enabled:=true
  else
    edit2.Enabled:=false;
  if checkbox3.Checked=true then
    edit3.Enabled:=true
  else
    edit3.Enabled:=false;
  if checkbox4.Checked=true then
    edit4.Enabled:=true
  else
    edit4.Enabled:=false;
  if checkbox5.Checked=true then
    edit5.Enabled:=true
  else
    edit5.Enabled:=false;
  if checkbox6.Checked=true then
    edit6.Enabled:=true
  else
    edit6.Enabled:=false;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
checkupdate;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
checkupdate;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
checkupdate;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
checkupdate;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
checkupdate;
end;

end.
