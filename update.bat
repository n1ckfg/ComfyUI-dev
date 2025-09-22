@echo off

cd %~dp0

cd ComfyUI\custom_nodes

for /d %%d in (*) do (
    if exist "%%d\.git" (
        echo Pulling changes for repository: %%~nd
        pushd "%%d" && (
            git pull
            popd
        )
    )
)

@pause