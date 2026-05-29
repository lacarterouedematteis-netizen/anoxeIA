#include <windows.h>
        (HMENU)BTN_AI,
        hInstance,
        NULL
    );

    CreateWindow(
        "BUTTON",
        "Creer Video",
        WS_VISIBLE | WS_CHILD,
        450,
        150,
        300,
        80,
        hwnd,
        (HMENU)BTN_VIDEO,
        hInstance,
        NULL
    );

    CreateWindow(
        "BUTTON",
        "Telecharger EXE",
        WS_VISIBLE | WS_CHILD,
        800,
        150,
        200,
        80,
        hwnd,
        (HMENU)BTN_DOWNLOAD,
        hInstance,
        NULL
    );

    ShowWindow(hwnd, nCmdShow);

    MSG msg = {};

    while (GetMessage(&msg, NULL, 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }

    return 0;
}

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch (uMsg)
    {
        case WM_COMMAND:

            switch (LOWORD(wParam))
            {
                case BTN_AI:
                    RunAI();
                    break;

                case BTN_VIDEO:
                    CreateVideo();
                    break;

                case BTN_DOWNLOAD:
                    DownloadEXE();
                    break;
            }

            return 0;

        case WM_DESTROY:
            PostQuitMessage(0);
            return 0;
    }

    return DefWindowProc(hwnd, uMsg, wParam, lParam);
}
