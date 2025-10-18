@echo off

cd %~dp0

git pull

cd ComfyUI

git pull

cd custom_nodes

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