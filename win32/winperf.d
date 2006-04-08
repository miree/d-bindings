// Converted from w32api\winperf.h

module win32.winperf;
import win32.windef;
import win32.winbase; // for SYSTEMTIME

const PERF_DATA_VERSION=1;
const PERF_DATA_REVISION=1;
const PERF_NO_INSTANCES=-1;
const PERF_SIZE_DWORD=0;
const PERF_SIZE_LARGE=256;
const PERF_SIZE_ZERO=512;
const PERF_SIZE_VARIABLE_LEN=768;
const PERF_TYPE_NUMBER=0;
const PERF_TYPE_COUNTER=1024;
const PERF_TYPE_TEXT=2048;
const PERF_TYPE_ZERO=0xC00;
const PERF_NUMBER_HEX=0;
const PERF_NUMBER_DECIMAL=0x10000;
const PERF_NUMBER_DEC_1000=0x20000;
const PERF_COUNTER_VALUE=0;
const PERF_COUNTER_RATE=0x10000;
const PERF_COUNTER_FRACTION=0x20000;
const PERF_COUNTER_BASE=0x30000;
const PERF_COUNTER_ELAPSED=0x40000;
const PERF_COUNTER_QUEUELEN=0x50000;
const PERF_COUNTER_HISTOGRAM=0x60000;
const PERF_TEXT_UNICODE=0;
const PERF_TEXT_ASCII=0x10000;
const PERF_TIMER_TICK=0;
const PERF_TIMER_100NS=0x100000;
const PERF_OBJECT_TIMER=0x200000;
const PERF_DELTA_COUNTER=0x400000;
const PERF_DELTA_BASE=0x800000;
const PERF_INVERSE_COUNTER=0x1000000;
const PERF_MULTI_COUNTER=0x2000000;
const PERF_DISPLAY_NO_SUFFIX=0;
const PERF_DISPLAY_PER_SEC=0x10000000;
const PERF_DISPLAY_PERCENT=0x20000000;
const PERF_DISPLAY_SECONDS=0x30000000;
const PERF_DISPLAY_NOSHOW=0x40000000;
const PERF_COUNTER_HISTOGRAM_TYPE=0x80000000;
const PERF_NO_UNIQUE_ID=(-1);
const PERF_DETAIL_NOVICE=100;
const PERF_DETAIL_ADVANCED=200;
const PERF_DETAIL_EXPERT=300;
const PERF_DETAIL_WIZARD=400;
const PERF_COUNTER_COUNTER=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_PER_SEC);
const PERF_COUNTER_TIMER=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_COUNTER_QUEUELEN_TYPE=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_QUEUELEN|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_NO_SUFFIX);
const PERF_COUNTER_BULK_COUNT=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_PER_SEC);
const PERF_COUNTER_TEXT=(PERF_SIZE_VARIABLE_LEN|PERF_TYPE_TEXT|PERF_TEXT_UNICODE|PERF_DISPLAY_NO_SUFFIX);
const PERF_COUNTER_RAWCOUNT=(PERF_SIZE_DWORD|PERF_TYPE_NUMBER|PERF_NUMBER_DECIMAL|PERF_DISPLAY_NO_SUFFIX);
const PERF_COUNTER_LARGE_RAWCOUNT=(PERF_SIZE_LARGE|PERF_TYPE_NUMBER|PERF_NUMBER_DECIMAL|PERF_DISPLAY_NO_SUFFIX);
const PERF_COUNTER_RAWCOUNT_HEX=(PERF_SIZE_DWORD|PERF_TYPE_NUMBER|PERF_NUMBER_HEX|PERF_DISPLAY_NO_SUFFIX);
const PERF_COUNTER_LARGE_RAWCOUNT_HEX=(PERF_SIZE_LARGE|PERF_TYPE_NUMBER|PERF_NUMBER_HEX|PERF_DISPLAY_NO_SUFFIX);
const PERF_SAMPLE_FRACTION=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DELTA_COUNTER|PERF_DELTA_BASE|PERF_DISPLAY_PERCENT);
const PERF_SAMPLE_COUNTER=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_NO_SUFFIX);
const PERF_COUNTER_NODATA=(PERF_SIZE_ZERO|PERF_DISPLAY_NOSHOW);
const PERF_COUNTER_TIMER_INV=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_SAMPLE_BASE=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_DISPLAY_NOSHOW|1);
const PERF_AVERAGE_TIMER=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DISPLAY_SECONDS);
const PERF_AVERAGE_BASE=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_DISPLAY_NOSHOW|2);
const PERF_AVERAGE_BULK=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DISPLAY_NOSHOW);
const PERF_100NSEC_TIMER=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_DELTA_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_100NSEC_TIMER_INV=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_DELTA_COUNTER|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_COUNTER_MULTI_TIMER=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_DELTA_COUNTER|PERF_TIMER_TICK|PERF_MULTI_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_COUNTER_MULTI_TIMER_INV=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_DELTA_COUNTER|PERF_MULTI_COUNTER|PERF_TIMER_TICK|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_COUNTER_MULTI_BASE=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_MULTI_COUNTER|PERF_DISPLAY_NOSHOW);
const PERF_100NSEC_MULTI_TIMER=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_DELTA_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_MULTI_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_100NSEC_MULTI_TIMER_INV=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_DELTA_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_MULTI_COUNTER|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT);
const PERF_RAW_FRACTION=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DISPLAY_PERCENT);
const PERF_RAW_BASE=(PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_DISPLAY_NOSHOW|3);
const PERF_ELAPSED_TIME=(PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_ELAPSED|PERF_OBJECT_TIMER|PERF_DISPLAY_SECONDS);

struct PERF_DATA_BLOCK{
	WCHAR Signature[4];
	DWORD LittleEndian;
	DWORD Version;
	DWORD Revision;
	DWORD TotalByteLength;
	DWORD HeaderLength;
	DWORD NumObjectTypes;
	LONG DefaultObject;
	SYSTEMTIME SystemTime;
	LARGE_INTEGER PerfTime;
	LARGE_INTEGER PerfFreq;
	LARGE_INTEGER PerfTime100nSec;
	DWORD SystemNameLength;
	DWORD SystemNameOffset;
}
alias PERF_DATA_BLOCK * PPERF_DATA_BLOCK;

struct PERF_OBJECT_TYPE{
	DWORD TotalByteLength;
	DWORD DefinitionLength;
	DWORD HeaderLength;
	DWORD ObjectNameTitleIndex;
	LPWSTR ObjectNameTitle;
	DWORD ObjectHelpTitleIndex;
	LPWSTR ObjectHelpTitle;
	DWORD DetailLevel;
	DWORD NumCounters;
	LONG DefaultCounter;
	LONG NumInstances;
	DWORD CodePage;
	LARGE_INTEGER PerfTime;
	LARGE_INTEGER PerfFreq;
}
alias PERF_OBJECT_TYPE * PPERF_OBJECT_TYPE;

struct PERF_COUNTER_DEFINITION{
	DWORD ByteLength;
	DWORD CounterNameTitleIndex;
	LPWSTR CounterNameTitle;
	DWORD CounterHelpTitleIndex;
	LPWSTR CounterHelpTitle;
	LONG DefaultScale;
	DWORD DetailLevel;
	DWORD CounterType;
	DWORD CounterSize;
	DWORD CounterOffset;
}
alias PERF_COUNTER_DEFINITION * PPERF_COUNTER_DEFINITION;

struct PERF_INSTANCE_DEFINITION{
	DWORD ByteLength;
	DWORD ParentObjectTitleIndex;
	DWORD ParentObjectInstance;
	LONG UniqueID;
	DWORD NameOffset;
	DWORD NameLength;
}
alias PERF_INSTANCE_DEFINITION * PPERF_INSTANCE_DEFINITION;

struct PERF_COUNTER_BLOCK{
	DWORD ByteLength;
}
alias PERF_COUNTER_BLOCK * PPERF_COUNTER_BLOCK;

extern (Windows):
alias DWORD function (LPWSTR) PM_OPEN_PROC;
alias DWORD function (LPWSTR,PVOID*,PDWORD,PDWORD) PM_COLLECT_PROC;
alias DWORD function () PM_CLOSE_PROC;
