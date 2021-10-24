/* 
 * File:   configIO.h
 * Author: patrick
 *
 * Created on March 7, 2010, 8:04 PM
 * 
 * Parses INI files.  INI File format
        [SectionName]
        var1 = somevalue
        # comment
 */

#ifndef _CONFIGFILES_H
#define	_CONFIGFILES_H

#ifdef	__cplusplus
extern "C" {
#endif

#define     INI_LINESIZE    1024
    
struct CfgStrings
{
    char * name ;
    char * data ;
};


enum CfgTypes {Cfg_String,
               Cfg_Byte,
               Cfg_Ushort,
               Cfg_Short,
               Cfg_Ulong,
               Cfg_Long,
               Cfg_Double,
               Cfg_Boolean, /* Boolean is actually an integer Y/N T/F */
               Cfg_I_Array
              };

struct CfgStruct {
      char *Name;
      void *DataPtr;
      enum CfgTypes VarType;
};

extern  int IniFiler_ReadCfg(const char *FileName,
            char *SectionName,
            struct CfgStruct *MyVars);

extern  int IniFiler_SearchCfg(const char *FileName,
              char *SectionName,
              char *VarName,
              void *DataPtr,
              enum CfgTypes VarType);

extern  int IniFiler_UpdateCfg(const char *FileName,
              char *SectionName,
              char *VarWanted,
              char *NewData);



//extern  char    *StripLeadingSpaces(char *string);
//extern  char    *StripTrailingSpaces(char *string);
//extern  int     StrEq(char *s1, char *s2);
//extern  int CfgRead( char * Filename, struct CfgStrings * CfgInfo );

#ifdef	__cplusplus
}
#endif

#endif	/* _CONFIGFILES_H */

