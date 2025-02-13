#!/bin/bash


enable_handler() {
    local args=("$@")

    case "${args[0]}" in
        --api)
            enable_kube_api
            ;;
        --apt)
            enable_apt
            ;;
        --helm)
            enable_helm
            ;;
        -h|--help)
            enable_help
            ;;
        *)
            echo "Unknown feature: $1"
            enable_help
            ;;
    esac
}