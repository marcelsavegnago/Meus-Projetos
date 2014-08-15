// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'UEscherOtherRecords.pas' rev: 22.00

#ifndef UescherotherrecordsHPP
#define UescherotherrecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <UBreakList.hpp>	// Pascal unit
#include <UEscherRecords.hpp>	// Pascal unit
#include <XlsMessages.hpp>	// Pascal unit
#include <UXlsBaseClientData.hpp>	// Pascal unit
#include <UFlxMessages.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uescherotherrecords
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TEscherRegroupRecord;
class PASCALIMPLEMENTATION TEscherRegroupRecord : public Uescherrecords::TEscherDataRecord
{
	typedef Uescherrecords::TEscherDataRecord inherited;
	
public:
	/* TEscherDataRecord.Create */ inline __fastcall virtual TEscherRegroupRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent) : Uescherrecords::TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherRegroupRecord(void) { }
	
};


class DELPHICLASS TRuleRecord;
class PASCALIMPLEMENTATION TRuleRecord : public Uescherrecords::TEscherDataRecord
{
	typedef Uescherrecords::TEscherDataRecord inherited;
	
public:
	virtual bool __fastcall DeleteRef(const Uescherrecords::TEscherSPRecord* aShape) = 0 ;
	virtual void __fastcall FixPointers(void) = 0 ;
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet) = 0 ;
public:
	/* TEscherDataRecord.Create */ inline __fastcall virtual TRuleRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent) : Uescherrecords::TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TRuleRecord(void) { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TConnectorRule
{
	
public:
	unsigned RuleId;
	System::StaticArray<unsigned, 3> SpIds;
	unsigned CpA;
	unsigned CpB;
};
#pragma pack(pop)


typedef TConnectorRule *PConnectorRule;

class DELPHICLASS TEscherConnectorRuleRecord;
class PASCALIMPLEMENTATION TEscherConnectorRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TConnectorRule *FConnectorRule;
	System::StaticArray<Uescherrecords::TEscherSPRecord*, 3> Shapes;
	
protected:
	virtual Uescherrecords::TEscherRecord* __fastcall DoCopyTo(const Uescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherConnectorRuleRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Uescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherConnectorRuleRecord(void) { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TAlignRule
{
	
public:
	unsigned RuleId;
	unsigned Align;
	unsigned nProxies;
};
#pragma pack(pop)


typedef TAlignRule *PAlignRule;

class DELPHICLASS TEscherAlignRuleRecord;
class PASCALIMPLEMENTATION TEscherAlignRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TAlignRule *FAlignRule;
	
protected:
	virtual Uescherrecords::TEscherRecord* __fastcall DoCopyTo(const Uescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherAlignRuleRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Uescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherAlignRuleRecord(void) { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TArcRule
{
	
public:
	unsigned RuleId;
	unsigned SpId;
};
#pragma pack(pop)


typedef TArcRule *PArcRule;

class DELPHICLASS TEscherArcRuleRecord;
class PASCALIMPLEMENTATION TEscherArcRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TArcRule *FArcRule;
	Uescherrecords::TEscherSPRecord* Shape;
	
protected:
	virtual Uescherrecords::TEscherRecord* __fastcall DoCopyTo(const Uescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherArcRuleRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Uescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherArcRuleRecord(void) { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TCalloutRule
{
	
public:
	unsigned RuleId;
	unsigned SpId;
};
#pragma pack(pop)


typedef TCalloutRule *PCalloutRule;

class DELPHICLASS TEscherCalloutRuleRecord;
class PASCALIMPLEMENTATION TEscherCalloutRuleRecord : public TRuleRecord
{
	typedef TRuleRecord inherited;
	
private:
	TCalloutRule *FCalloutRule;
	Uescherrecords::TEscherSPRecord* Shape;
	
protected:
	virtual Uescherrecords::TEscherRecord* __fastcall DoCopyTo(const Uescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherCalloutRuleRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Uescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherCalloutRuleRecord(void) { }
	
};


class DELPHICLASS TEscherClientTextBoxRecord;
class PASCALIMPLEMENTATION TEscherClientTextBoxRecord : public Uescherrecords::TEscherClientDataRecord
{
	typedef Uescherrecords::TEscherClientDataRecord inherited;
	
private:
	System::UnicodeString __fastcall GetValue(void);
	void __fastcall SetValue(const System::UnicodeString aValue);
	
public:
	__property System::UnicodeString Value = {read=GetValue, write=SetValue};
	virtual bool __fastcall WaitingClientData(/* out */ Uxlsbaseclientdata::ClassOfTBaseClientData &ClientType);
	__fastcall TEscherClientTextBoxRecord(const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent);
public:
	/* TEscherClientDataRecord.Create */ inline __fastcall virtual TEscherClientTextBoxRecord(const Uescherrecords::TEscherRecordHeader &aEscherHeader, const Uescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Uescherrecords::PEscherDwgCache aDwgCache, const Uescherrecords::TEscherContainerRecord* aParent) : Uescherrecords::TEscherClientDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	/* TEscherClientDataRecord.Destroy */ inline __fastcall virtual ~TEscherClientTextBoxRecord(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Uescherotherrecords */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Uescherotherrecords;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// UescherotherrecordsHPP