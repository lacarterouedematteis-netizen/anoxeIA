#include <windows.h>
#include <shellapi.h>
#include "video_creator.h"

void CreateVideo()
{
    MessageBox(
        NULL,
        "Creation video IA lancee.",
        "VIDEO AI",
        MB_OK
    );

    ShellExecute(
        NULL,
        "open",
        "https://www.capcut.com/",
        NULL,
        NULL,
        SW_SHOWNORMAL
    );
}
