/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20240927 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-GPI0.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000043 (67)
 *     Revision         0x02
 *     Checksum         0xC5
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "GPI0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20240322 (539231010)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "GPI0", 0x00000000)
{
    External (GPHD, FieldUnitObj)

    If (_OSI ("Darwin"))
    {
        GPHD = One
    }
}

