﻿namespace Quantum.Exercise_4 {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Measurement;

    operation TestEntanglement1() : Result[] {
        using (qubits = Qubit[2]) {
            H(qubits[0]);
            CNOT(qubits[0], qubits[1]);
            Message("Entangled state before measurement:");
            DumpMachine();
            Message(" ");
            let results = MultiM(qubits);
            Message("State after measurement:");
            DumpMachine();
            return results;
        }
    }

    @EntryPoint()
    operation TestEntanglement2() : Result[] {
        using (qubits = Qubit[2]) {
            H(qubits[0]);
            Controlled X([qubits[0]], qubits[1]);
            Message("Entangled state before measurement:");
            DumpMachine();
            Message(" ");
            let results = MultiM(qubits);
            Message("State after measurement:");
            DumpMachine();
            return results;
        }
    }
}