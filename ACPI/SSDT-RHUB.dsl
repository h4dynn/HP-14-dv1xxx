/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-RHUB.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006D (109)
 *     Revision         0x02
 *     Checksum         0x34
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "RhubOff"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20240322 (539231010)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "RhubOff", 0x00001000)
{
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)

    Scope (_SB.PC00.XHCI.RHUB)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
}

